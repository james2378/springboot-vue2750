package com.entity.view;

import com.entity.FuzhuangCommentbackEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 服装评价
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("fuzhuang_commentback")
public class FuzhuangCommentbackView extends FuzhuangCommentbackEntity implements Serializable {
    private static final long serialVersionUID = 1L;




		//级联表 fuzhuang
			/**
			* 服装编号
			*/
			private String fuzhuangUuidNumber;
			/**
			* 服装名称
			*/
			private String fuzhuangName;
			/**
			* 服装照片
			*/
			private String fuzhuangPhoto;
			/**
			* 服装类型
			*/
			private Integer fuzhuangTypes;
				/**
				* 服装类型的值
				*/
				private String fuzhuangValue;
			/**
			* 服装原价
			*/
			private Double fuzhuangOldMoney;
			/**
			* 现价
			*/
			private Double fuzhuangNewMoney;

		//级联表 yonghu
			/**
			* 用户姓名
			*/
			private String yonghuName;
			/**
			* 用户手机号
			*/
			private String yonghuPhone;
			/**
			* 用户头像
			*/
			private String yonghuPhoto;
			/**
			* 余额
			*/
			private Double newMoney;

	public FuzhuangCommentbackView() {

	}

	public FuzhuangCommentbackView(FuzhuangCommentbackEntity fuzhuangCommentbackEntity) {
		try {
			BeanUtils.copyProperties(this, fuzhuangCommentbackEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
















				//级联表的get和set fuzhuang

					/**
					* 获取： 服装编号
					*/
					public String getFuzhuangUuidNumber() {
						return fuzhuangUuidNumber;
					}
					/**
					* 设置： 服装编号
					*/
					public void setFuzhuangUuidNumber(String fuzhuangUuidNumber) {
						this.fuzhuangUuidNumber = fuzhuangUuidNumber;
					}

					/**
					* 获取： 服装名称
					*/
					public String getFuzhuangName() {
						return fuzhuangName;
					}
					/**
					* 设置： 服装名称
					*/
					public void setFuzhuangName(String fuzhuangName) {
						this.fuzhuangName = fuzhuangName;
					}

					/**
					* 获取： 服装照片
					*/
					public String getFuzhuangPhoto() {
						return fuzhuangPhoto;
					}
					/**
					* 设置： 服装照片
					*/
					public void setFuzhuangPhoto(String fuzhuangPhoto) {
						this.fuzhuangPhoto = fuzhuangPhoto;
					}

					/**
					* 获取： 服装类型
					*/
					public Integer getFuzhuangTypes() {
						return fuzhuangTypes;
					}
					/**
					* 设置： 服装类型
					*/
					public void setFuzhuangTypes(Integer fuzhuangTypes) {
						this.fuzhuangTypes = fuzhuangTypes;
					}


						/**
						* 获取： 服装类型的值
						*/
						public String getFuzhuangValue() {
							return fuzhuangValue;
						}
						/**
						* 设置： 服装类型的值
						*/
						public void setFuzhuangValue(String fuzhuangValue) {
							this.fuzhuangValue = fuzhuangValue;
						}

					/**
					* 获取： 服装原价
					*/
					public Double getFuzhuangOldMoney() {
						return fuzhuangOldMoney;
					}
					/**
					* 设置： 服装原价
					*/
					public void setFuzhuangOldMoney(Double fuzhuangOldMoney) {
						this.fuzhuangOldMoney = fuzhuangOldMoney;
					}

					/**
					* 获取： 现价
					*/
					public Double getFuzhuangNewMoney() {
						return fuzhuangNewMoney;
					}
					/**
					* 设置： 现价
					*/
					public void setFuzhuangNewMoney(Double fuzhuangNewMoney) {
						this.fuzhuangNewMoney = fuzhuangNewMoney;
					}
















				//级联表的get和set yonghu

					/**
					* 获取： 用户姓名
					*/
					public String getYonghuName() {
						return yonghuName;
					}
					/**
					* 设置： 用户姓名
					*/
					public void setYonghuName(String yonghuName) {
						this.yonghuName = yonghuName;
					}

					/**
					* 获取： 用户手机号
					*/
					public String getYonghuPhone() {
						return yonghuPhone;
					}
					/**
					* 设置： 用户手机号
					*/
					public void setYonghuPhone(String yonghuPhone) {
						this.yonghuPhone = yonghuPhone;
					}

					/**
					* 获取： 用户头像
					*/
					public String getYonghuPhoto() {
						return yonghuPhoto;
					}
					/**
					* 设置： 用户头像
					*/
					public void setYonghuPhoto(String yonghuPhoto) {
						this.yonghuPhoto = yonghuPhoto;
					}

					/**
					* 获取： 余额
					*/
					public Double getNewMoney() {
						return newMoney;
					}
					/**
					* 设置： 余额
					*/
					public void setNewMoney(Double newMoney) {
						this.newMoney = newMoney;
					}






}
