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

import com.Usuarios.Conexion.Model.Movimientos;
import com.Usuarios.Conexion.Repository.MovimientoRepository;


@Service
public class MovimientoService implements MovimientoRepository {
	
	@Autowired
	private MovimientoRepository  movimientoRepository;

	@Override
	public List<Movimientos> findAll() {
		// TODO Auto-generated method stub
		return movimientoRepository.findAll();
	}
	
	//@SuppressWarnings("null")
	public List<Movimientos> findAllbyMovimientos(Long idproducto){
		List<Movimientos> movimientoRepuesta= new ArrayList<>();
		List<Movimientos> movimientos= movimientoRepository.findAll();
		for (int i=0; i<movimientos.size();i++) {
			if(movimientos.get(i).getIdproducto()==idproducto) {
				movimientoRepuesta.add(movimientos.get(i));
			}
		}
		return movimientoRepuesta;
	}

	@Override
	public List<Movimientos> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return movimientoRepository.findAll(sort);
	}

	@Override
	public List<Movimientos> findAllById(Iterable<Long> idproducto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Movimientos> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAllInBatch(Iterable<Movimientos> entities) {
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
	public Movimientos getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Movimientos getById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Movimientos getReferenceById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<Movimientos> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> S save(S entity) {
		// TODO Auto-generated method stub
		return movimientoRepository.save(entity);
	}

	@Override
	public Optional<Movimientos> findById(Long idmovim) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public boolean existsById(Long idmovim) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteById(Long idmovim) {
		// TODO Auto-generated method stub
		movimientoRepository.deleteById(idmovim);
	}

	@Override
	public void delete(Movimientos entity) {
		// TODO Auto-generated method stub
		movimientoRepository.delete(entity);
		
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Movimientos> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Movimientos> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends Movimientos> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Movimientos> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends Movimientos> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends Movimientos, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}
	

	

}
