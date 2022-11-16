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


import com.Usuarios.Conexion.Model.ProdDisponibles;
import com.Usuarios.Conexion.Repository.ProdDisponibleRepository;


@Service
public class ProdDisponibleService implements ProdDisponibleRepository {
	
	@Autowired
	private ProdDisponibleRepository  prodDisponibleRepository;

	@Override
	public List<ProdDisponibles> findAll() {
		// TODO Auto-generated method stub
		return prodDisponibleRepository.findAll();
	}
	
	//@SuppressWarnings("null")
	public List<ProdDisponibles> findAllbyProdDisponibles(Long idcompra){
		List<ProdDisponibles> prodDisponibleRepuesta= new ArrayList<>();
		List<ProdDisponibles> prodDisponibles= prodDisponibleRepository.findAll();
		for (int i=0; i<prodDisponibles.size();i++) {
			if(prodDisponibles.get(i).getIdcompra()==idcompra) {
				prodDisponibleRepuesta.add(prodDisponibles.get(i));
			}
		}
		return prodDisponibleRepuesta;
	}

	@Override
	public List<ProdDisponibles> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return prodDisponibleRepository.findAll(sort);
	}

	@Override
	public List<ProdDisponibles> findAllById(Iterable<Long> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends ProdDisponibles> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAllInBatch(Iterable<ProdDisponibles> entities) {
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
	public ProdDisponibles getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProdDisponibles getById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProdDisponibles getReferenceById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<ProdDisponibles> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<ProdDisponibles> findById(Long id) {
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
		
	}

	@Override
	public void delete(ProdDisponibles entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends ProdDisponibles> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends ProdDisponibles> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends ProdDisponibles> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends ProdDisponibles> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends ProdDisponibles> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends ProdDisponibles, R> R findBy(Example<S> example,
			Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
