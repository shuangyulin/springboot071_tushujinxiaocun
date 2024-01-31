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


import com.dao.KucunfenxiDao;
import com.entity.KucunfenxiEntity;
import com.service.KucunfenxiService;
import com.entity.vo.KucunfenxiVO;
import com.entity.view.KucunfenxiView;

@Service("kucunfenxiService")
public class KucunfenxiServiceImpl extends ServiceImpl<KucunfenxiDao, KucunfenxiEntity> implements KucunfenxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KucunfenxiEntity> page = this.selectPage(
                new Query<KucunfenxiEntity>(params).getPage(),
                new EntityWrapper<KucunfenxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KucunfenxiEntity> wrapper) {
		  Page<KucunfenxiView> page =new Query<KucunfenxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KucunfenxiVO> selectListVO(Wrapper<KucunfenxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KucunfenxiVO selectVO(Wrapper<KucunfenxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KucunfenxiView> selectListView(Wrapper<KucunfenxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KucunfenxiView selectView(Wrapper<KucunfenxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
