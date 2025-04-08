package com.entity.view;

import com.entity.FuzhuangOrderEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 服装订单
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("fuzhuang_order")
public class FuzhuangOrderView extends FuzhuangOrderEntity implements Serializable {
    private static final long serialVersionUID = 1L;

		/**
		* 订单类型的值
		*/
		private String fuzhuangOrderValue;
		/**
		* 审核状态的值
		*/
		private String fuzhuangOrderYesnoValue;
		/**
		* 支付类型的值
		*/
		private String fuzhuangOrderPaymentValue;



		//级联表 address
			/**
			* 收货地址 的 创建用户
			*/
			private Integer addressYonghuId;
			/**
			* 收货人
			*/
			private String addressName;
			/**
			* 电话
			*/
			private String addressPhone;
			/**
			* 地址
			*/
			private String addressDizhi;
			/**
			* 是否默认地址
			*/
			private Integer isdefaultTypes;
				/**
				* 是否默认地址的值
				*/
				private String isdefaultValue;

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

	public FuzhuangOrderView() {

	}

	public FuzhuangOrderView(FuzhuangOrderEntity fuzhuangOrderEntity) {
		try {
			BeanUtils.copyProperties(this, fuzhuangOrderEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 订单类型的值
			*/
			public String getFuzhuangOrderValue() {
				return fuzhuangOrderValue;
			}
			/**
			* 设置： 订单类型的值
			*/
			public void setFuzhuangOrderValue(String fuzhuangOrderValue) {
				this.fuzhuangOrderValue = fuzhuangOrderValue;
			}
			/**
			* 获取： 审核状态的值
			*/
			public String getFuzhuangOrderYesnoValue() {
				return fuzhuangOrderYesnoValue;
			}
			/**
			* 设置： 审核状态的值
			*/
			public void setFuzhuangOrderYesnoValue(String fuzhuangOrderYesnoValue) {
				this.fuzhuangOrderYesnoValue = fuzhuangOrderYesnoValue;
			}
			/**
			* 获取： 支付类型的值
			*/
			public String getFuzhuangOrderPaymentValue() {
				return fuzhuangOrderPaymentValue;
			}
			/**
			* 设置： 支付类型的值
			*/
			public void setFuzhuangOrderPaymentValue(String fuzhuangOrderPaymentValue) {
				this.fuzhuangOrderPaymentValue = fuzhuangOrderPaymentValue;
			}




				//级联表的get和set address

					/**
					* 获取：收货地址 的 创建用户
					*/
					public Integer getAddressYonghuId() {
						return addressYonghuId;
					}
					/**
					* 设置：收货地址 的 创建用户
					*/
					public void setAddressYonghuId(Integer addressYonghuId) {
						this.addressYonghuId = addressYonghuId;
					}


					/**
					* 获取： 收货人
					*/
					public String getAddressName() {
						return addressName;
					}
					/**
					* 设置： 收货人
					*/
					public void setAddressName(String addressName) {
						this.addressName = addressName;
					}

					/**
					* 获取： 电话
					*/
					public String getAddressPhone() {
						return addressPhone;
					}
					/**
					* 设置： 电话
					*/
					public void setAddressPhone(String addressPhone) {
						this.addressPhone = addressPhone;
					}

					/**
					* 获取： 地址
					*/
					public String getAddressDizhi() {
						return addressDizhi;
					}
					/**
					* 设置： 地址
					*/
					public void setAddressDizhi(String addressDizhi) {
						this.addressDizhi = addressDizhi;
					}

					/**
					* 获取： 是否默认地址
					*/
					public Integer getIsdefaultTypes() {
						return isdefaultTypes;
					}
					/**
					* 设置： 是否默认地址
					*/
					public void setIsdefaultTypes(Integer isdefaultTypes) {
						this.isdefaultTypes = isdefaultTypes;
					}


						/**
						* 获取： 是否默认地址的值
						*/
						public String getIsdefaultValue() {
							return isdefaultValue;
						}
						/**
						* 设置： 是否默认地址的值
						*/
						public void setIsdefaultValue(String isdefaultValue) {
							this.isdefaultValue = isdefaultValue;
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
