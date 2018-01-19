package com.thoughtWorks.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author 马欢欢
 * @date 2017/12/15
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Model {
    private Integer mId;
    private String mCode;
    private String mName;
    private Double mPrice;
    private String mIntroduce;
    private String mThumbnail;
    private String mDynamic;
    private String mUnity;
    private String mFile;
    private String mVersion;
    private String mXmlpath;
    private Integer mAclassify;
    private Integer mBclassify;
    private Integer mCclassify;
}
