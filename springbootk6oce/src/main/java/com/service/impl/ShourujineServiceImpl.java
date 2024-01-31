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


import com.dao.ShourujineDao;
import com.entity.ShourujineEntity;
import com.service.ShourujineService;
import com.entity.vo.ShourujineVO;
import com.entity.view.ShourujineView;

@Service("shourujineService")
public class ShourujineServiceImpl extends ServiceImpl<ShourujineDao, ShourujineEntity> implements ShourujineService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShourujineEntity> page = this.selectPage(
                new Query<ShourujineEntity>(params).getPage(),
                new EntityWrapper<ShourujineEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShourujineEntity> wrapper) {
		  Page<ShourujineView> page =new Query<ShourujineView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShourujineVO> selectListVO(Wrapper<ShourujineEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShourujineVO selectVO(Wrapper<ShourujineEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShourujineView> selectListView(Wrapper<ShourujineEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShourujineView selectView(Wrapper<ShourujineEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
