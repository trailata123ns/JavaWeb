package com.devpro.shop14.services;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.Constants;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.entities.ProductsImagesEntity;

@Service
public class ProductService extends BaseService<ProductsEntity> implements Constants{

	@Override
	protected Class<ProductsEntity> clazz() {
		// TODO Auto-generated method stub
		return ProductsEntity.class;
	}
	
	// tất cả các services cần thêm hàm search.
		public List<ProductsEntity> search(ProductSearch searchModel) {

			// khởi tạo câu lệnh
			String sql = "SELECT  * FROM tbl_products p  WHERE 1=1";

			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + " or p.detail_description like '%"
						+ searchModel.getKeyword() + "%'" + " or p.short_description like '%"
						+ searchModel.getKeyword() + "%')";
			}
			
			// chi lay san pham chua xoa
//			sql += " and p.status=1 ";
	//		sql +="LIMIT 5";
			return executeNativeSql(sql,searchModel.getPage());
		}
		public List<ProductsEntity> count() {
			String sql = "SELECT  * FROM tbl_products p  WHERE 1=1";
			return executeNativeSql(sql,-1);
		}
	
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	@Transactional
	public ProductsEntity edit(ProductsEntity product, MultipartFile inputAvatar,MultipartFile[] inputPictures) throws Exception {
		//Có đẩy avatar lên không
		// lay thong tin san pham trong db.
		ProductsEntity productOnDb = super.getById(product.getId());
				
		// có đẩy avartar ???
		if(!isEmptyUploadFile(inputAvatar)) {
			// xóa avatar trong folder lên
			new File(UPLOAD_FILE_ROOT + productOnDb.getAvatar()).delete();
					
			// add avartar moi
			inputAvatar.transferTo(new File(UPLOAD_FILE_ROOT + "product/avatar/" + inputAvatar.getOriginalFilename()));
			product.setAvatar("product/avatar/" + inputAvatar.getOriginalFilename());
		} else {
			// su dung lai avatar cu
			product.setAvatar(productOnDb.getAvatar());
		}
				
				// có đẩy pictures ???
		if (!isEmptyUploadFile(inputPictures)) {
					
					
			for (MultipartFile pic : inputPictures) {
				pic.transferTo(new File(UPLOAD_FILE_ROOT + "product/pictures/" + pic.getOriginalFilename()));

				ProductsImagesEntity pi = new ProductsImagesEntity();
				pi.setPath("product/pictures/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());
						
				product.addRelationProduct(pi);
			}
		}
		
		return super.saveOrUpdate(product);
	}
	
	@Transactional
	public ProductsEntity save(ProductsEntity product, MultipartFile inputAvatar,MultipartFile[] inputPictures) throws Exception {
		//Có đẩy avatar lên không
		if(!isEmptyUploadFile(inputAvatar)) {
			inputAvatar.transferTo(new File( UPLOAD_FILE_ROOT +"product/avatar/"+inputAvatar.getOriginalFilename()));
			product.setAvatar("product/avatar/" +inputAvatar.getOriginalFilename());
		}
		
		//product imgages
		// có đẩy pictures ???
		if (!isEmptyUploadFile(inputPictures)) {
			for (MultipartFile pic : inputPictures) {
				pic.transferTo(new File(UPLOAD_FILE_ROOT + "product/pictures" + pic.getOriginalFilename()));

				ProductsImagesEntity pi = new ProductsImagesEntity();
				pi.setPath("product/pictures/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());

				product.addRelationProduct(pi);
			}
		}
		
		return super.saveOrUpdate(product);
	}
	@Transactional
	public void delete(ProductsEntity product){
		 super.delete(product);
	}
	
}
