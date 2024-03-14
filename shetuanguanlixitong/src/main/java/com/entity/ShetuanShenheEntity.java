package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 社团审核
 *
 * @author 
 * @email
 */
@TableName("shetuan_shenhe")
public class ShetuanShenheEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ShetuanShenheEntity() {

	}

	public ShetuanShenheEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 社团
     */
    @TableField(value = "shetuan_id")

    private Integer shetuanId;


    /**
     * 学生
     */
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 审核状态
     */
    @TableField(value = "shetuan_shenhe_yesno_types")

    private Integer shetuanShenheYesnoTypes;


    /**
     * 审核意见
     */
    @TableField(value = "shetuan_text")

    private String shetuanText;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：社团
	 */
    public Integer getShetuanId() {
        return shetuanId;
    }


    /**
	 * 获取：社团
	 */

    public void setShetuanId(Integer shetuanId) {
        this.shetuanId = shetuanId;
    }
    /**
	 * 设置：学生
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：学生
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：审核状态
	 */
    public Integer getShetuanShenheYesnoTypes() {
        return shetuanShenheYesnoTypes;
    }


    /**
	 * 获取：审核状态
	 */

    public void setShetuanShenheYesnoTypes(Integer shetuanShenheYesnoTypes) {
        this.shetuanShenheYesnoTypes = shetuanShenheYesnoTypes;
    }
    /**
	 * 设置：审核意见
	 */
    public String getShetuanText() {
        return shetuanText;
    }


    /**
	 * 获取：审核意见
	 */

    public void setShetuanText(String shetuanText) {
        this.shetuanText = shetuanText;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "ShetuanShenhe{" +
            "id=" + id +
            ", shetuanId=" + shetuanId +
            ", yonghuId=" + yonghuId +
            ", shetuanShenheYesnoTypes=" + shetuanShenheYesnoTypes +
            ", shetuanText=" + shetuanText +
            ", createTime=" + createTime +
        "}";
    }
}
