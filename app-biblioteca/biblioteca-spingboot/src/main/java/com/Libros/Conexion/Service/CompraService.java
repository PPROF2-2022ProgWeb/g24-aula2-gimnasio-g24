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

import com.Usuarios.Conexion.Model.Compras;
import com.Usuarios.Conexion.Model.Libros;
import com.Usuarios.Conexion.Repository.CompraRepository;
import com.Usuarios.Conexion.Repository.LibroRepository;


@Service
public class CompraService implements CompraRepository {
	
	@Autowired
	private CompraRepository  compraRepository;

	@Override
	public List<Compras> findAll() {
		// TODO Auto-generated method stub
		return compraRepository.findAll();
	}
	
	//@SuppressWarnings("null")
	public List<Compras> findAllbyCompras(Long idcompra){
		List<Compras> compraRepuesta= new ArrayList<>();
		List<Compras> compras= compraRepository.findAll();
		for (int i=0; i<compras.size();i++) {
			if(compras.get(i).getId()==idcompra) {
				compraRepuesta.add(compras.get(i));
			}
		}
		return compraRepuesta;
	}
	

	@Override
	public List<Compras> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return compraRepository.findAll(sort);
	}

	@Override
	public List<Compras> findAllById(Iterable<Long> idcompra) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Compras> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAllInBatch(Iterable<Compras> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Long> idcompra) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Compras getOne(Long idcompra) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Compras getById(Long idcompra) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Compras getReferenceById(Long idcompra) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<Compras> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> S save(S entity) {
		// TODO Auto-generated method stub
		return compraRepository.save(entity);
	}

	@Override
	public Optional<Compras> findById(Long id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public boolean existsById(Long idcompra) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteById(Long idcompra) {
		// TODO Auto-generated method stub
		compraRepository.deleteById(idcompra);
		
	}

	@Override
	public void delete(Compras entity) {
		// TODO Auto-generated method stub
		compraRepository.delete(entity);
		
		
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> idcompra) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Compras> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Compras> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends Compras> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Compras> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends Compras> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends Compras, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}

}
