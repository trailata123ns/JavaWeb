package com.devpro.shop14.services;

import java.io.File;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.CategorySearch;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.entities.ProductsImagesEntity;

@Service
public class CategoriesService extends BaseService<CategoryEntity>{
	//Chỉ rõ extend tầng service từ cái entity nào
	@Override
	protected Class<CategoryEntity> clazz() {
		// TODO Auto-generated method stub
		return CategoryEntity.class; // trả về class của cái entity
	}
	
	public List<CategoryEntity> findAllActive(){
		String sql ="select * from tbl_category where status = 1";
		return super.executeNativeSql(sql,-1);
	}
	
	public List<CategoryEntity> search(CategorySearch searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT  * FROM tbl_category c  WHERE 1=1";

		// tim kiem san pham theo seachText
		if (!StringUtils.isEmpty(searchModel.getKeyword())) {
			sql += " and (c.name like '%" + searchModel.getKeyword() + "%')";
		}
		
		// chi lay san pham chua xoa
//		sql += " and p.status=1 ";
//		sql +="LIMIT 5";
		return executeNativeSql(sql,searchModel.getPage());
	}
	public List<CategoryEntity> search1(CategorySearch searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT  * FROM tbl_category c  WHERE 1=1";

		// tim kiem san pham theo seachText
		if (!StringUtils.isEmpty(searchModel.getKeyword())) {
			sql += " and (c.name like '%" + searchModel.getKeyword() + "%'" + " or c.description like '%"
					+ searchModel.getKeyword() + "%')";
		}
		
		// chi lay san pham chua xoa
//		sql += " and p.status=1 ";
//		sql +="LIMIT 5";
		return executeNativeSql(sql,searchModel.getPage());
	}
	
	public List<CategoryEntity> count() {

		// khởi tạo câu lệnh
		String sql = "SELECT  * FROM tbl_category c  WHERE 1=1";

		
		return executeNativeSql(sql,-1);
	}
	
	@Transactional
	public CategoryEntity save(CategoryEntity categoryy) throws Exception {
		//Có đẩy avatar lên không
//		if(!isEmptyUploadFile(inputAvatar)) {
//			inputAvatar.transferTo(new File( UPLOAD_FILE_ROOT +"product/avatar/"+inputAvatar.getOriginalFilename()));
//			product.setAvatar("product/avatar/" +inputAvatar.getOriginalFilename());
//		}
		
		//product imgages
		// có đẩy pictures ???
//		if (!isEmptyUploadFile(inputPictures)) {
//			for (MultipartFile pic : inputPictures) {
//				pic.transferTo(new File(UPLOAD_FILE_ROOT + "product/pictures" + pic.getOriginalFilename()));
//
//				ProductsImagesEntity pi = new ProductsImagesEntity();
//				pi.setPath("product/pictures/" + pic.getOriginalFilename());
//				pi.setTitle(pic.getOriginalFilename());
//
//				product.addRelationProduct(pi);
//			}
//		}
		
		return super.saveOrUpdate(categoryy);
	}
	
	@Transactional
	public CategoryEntity edit(CategoryEntity categoryy)throws Exception {
		//Có đẩy avatar lên không
		// lay thong tin san pham trong db.
		CategoryEntity categoryOnDb = super.getById(categoryy.getId());
				
		// có đẩy avartar ???
//		if(!isEmptyUploadFile(inputAvatar)) {
//			// xóa avatar trong folder lên
//			new File(UPLOAD_FILE_ROOT + productOnDb.getAvatar()).delete();
//					
//			// add avartar moi
//			inputAvatar.transferTo(new File(UPLOAD_FILE_ROOT + "product/avatar/" + inputAvatar.getOriginalFilename()));
//			product.setAvatar("product/avatar/" + inputAvatar.getOriginalFilename());
//		} else {
//			// su dung lai avatar cu
//			product.setAvatar(productOnDb.getAvatar());
//		}
//				
//				// có đẩy pictures ???
//		if (!isEmptyUploadFile(inputPictures)) {
//					
//					
//			for (MultipartFile pic : inputPictures) {
//				pic.transferTo(new File(UPLOAD_FILE_ROOT + "product/pictures/" + pic.getOriginalFilename()));
//
//				ProductsImagesEntity pi = new ProductsImagesEntity();
//				pi.setPath("product/pictures/" + pic.getOriginalFilename());
//				pi.setTitle(pic.getOriginalFilename());
//						
//				product.addRelationProduct(pi);
//			}
//		}
		
		return super.saveOrUpdate(categoryy);
	}
	@Transactional
	public void delete(CategoryEntity categoryy){
		 super.delete(categoryy);
	}
}
