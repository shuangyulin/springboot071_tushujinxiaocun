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


import com.dao.JinhuodingdanDao;
import com.entity.JinhuodingdanEntity;
import com.service.JinhuodingdanService;
import com.entity.vo.JinhuodingdanVO;
import com.entity.view.JinhuodingdanView;

@Service("jinhuodingdanService")
public class JinhuodingdanServiceImpl extends ServiceImpl<JinhuodingdanDao, JinhuodingdanEntity> implements JinhuodingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JinhuodingdanEntity> page = this.selectPage(
                new Query<JinhuodingdanEntity>(params).getPage(),
                new EntityWrapper<JinhuodingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JinhuodingdanEntity> wrapper) {
		  Page<JinhuodingdanView> page =new Query<JinhuodingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JinhuodingdanVO> selectListVO(Wrapper<JinhuodingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JinhuodingdanVO selectVO(Wrapper<JinhuodingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JinhuodingdanView> selectListView(Wrapper<JinhuodingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JinhuodingdanView selectView(Wrapper<JinhuodingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
