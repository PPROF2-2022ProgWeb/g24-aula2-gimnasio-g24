package com.Usuarios.Conexion.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Service;

import com.Usuarios.Conexion.Model.productos;
import com.Usuarios.Conexion.Repository.ProductoRepository;


@Service
public class ProductoService implements ProductoRepository {
	
	@Autowired

	private ProductoRepository productoRepository;

	@Override
	public List<productos> findAll() {
		// TODO Auto-generated method stub
		return productoRepository.findAll();
	}
	
	//@SuppressWarnings("null")
	public List<productos> findAllbyproductos (Long id){
		List<productos> productoRepuesta= new ArrayList<>();
		List<productos> productoss= productoRepository.findAll();
		for (int i=0; i<productoss.size();i++) {
			if(productoss.get(i).getId()==id) {
				productoRepuesta.add(productoss.get(i));
			}
		}
		return productoRepuesta;
	}
	

	@Override
	public List<productos> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return productoRepository.findAll(sort);
	}

	@Override
	public List<productos> findAllById(Iterable<Long> id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends productos> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAllInBatch(Iterable<productos> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Long> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public productos getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public productos getById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public productos getReferenceById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<productos> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> S save(S entity) {
		// TODO Auto-generated method stub
		return productoRepository.save(entity);
	}

	@Override
	public Optional<productos> findById(Long id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		productoRepository.deleteById(id);
		
	}

	@Override
	public void delete(productos entity) {
		// TODO Auto-generated method stub
		productoRepository.delete(entity);
		
		
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends productos> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends productos> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends productos> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends productos> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends productos> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends productos, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}

}
