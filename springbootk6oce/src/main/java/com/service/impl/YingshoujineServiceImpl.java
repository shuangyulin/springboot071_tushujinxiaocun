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


import com.dao.YingshoujineDao;
import com.entity.YingshoujineEntity;
import com.service.YingshoujineService;
import com.entity.vo.YingshoujineVO;
import com.entity.view.YingshoujineView;

@Service("yingshoujineService")
public class YingshoujineServiceImpl extends ServiceImpl<YingshoujineDao, YingshoujineEntity> implements YingshoujineService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YingshoujineEntity> page = this.selectPage(
                new Query<YingshoujineEntity>(params).getPage(),
                new EntityWrapper<YingshoujineEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YingshoujineEntity> wrapper) {
		  Page<YingshoujineView> page =new Query<YingshoujineView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YingshoujineVO> selectListVO(Wrapper<YingshoujineEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YingshoujineVO selectVO(Wrapper<YingshoujineEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YingshoujineView> selectListView(Wrapper<YingshoujineEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YingshoujineView selectView(Wrapper<YingshoujineEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
