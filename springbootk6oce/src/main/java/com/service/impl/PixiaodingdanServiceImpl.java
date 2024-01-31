package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.PixiaodingdanDao;
import com.entity.PixiaodingdanEntity;
import com.service.PixiaodingdanService;
import com.entity.vo.PixiaodingdanVO;
import com.entity.view.PixiaodingdanView;

@Service("pixiaodingdanService")
public class PixiaodingdanServiceImpl extends ServiceImpl<PixiaodingdanDao, PixiaodingdanEntity> implements PixiaodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PixiaodingdanEntity> page = this.selectPage(
                new Query<PixiaodingdanEntity>(params).getPage(),
                new EntityWrapper<PixiaodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PixiaodingdanEntity> wrapper) {
		  Page<PixiaodingdanView> page =new Query<PixiaodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PixiaodingdanVO> selectListVO(Wrapper<PixiaodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PixiaodingdanVO selectVO(Wrapper<PixiaodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PixiaodingdanView> selectListView(Wrapper<PixiaodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PixiaodingdanView selectView(Wrapper<PixiaodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
