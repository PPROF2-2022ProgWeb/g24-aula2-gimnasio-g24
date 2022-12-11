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

import com.Usuarios.Conexion.Model.Libros;
import com.Usuarios.Conexion.Repository.LibroRepository;


@Service
public class LibroService implements LibroRepository {
	
	@Autowired
	private LibroRepository libroRepository;

	@Override
	public List<Libros> findAll() {
		// TODO Auto-generated method stub
		return libroRepository.findAll();
	}
	
	//@SuppressWarnings("null")
	public List<Libros> findAllbyLibros (Long id){
		List<Libros> libroRepuesta= new ArrayList<>();
		List<Libros> libros= libroRepository.findAll();
		for (int i=0; i<libros.size();i++) {
			if(libros.get(i).getId()==id) {
				libroRepuesta.add(libros.get(i));
			}
		}
		return libroRepuesta;
	}
	

	@Override
	public List<Libros> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return libroRepository.findAll(sort);
	}

	@Override
	public List<Libros> findAllById(Iterable<Long> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Libros> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAllInBatch(Iterable<Libros> entities) {
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
	public Libros getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Libros getById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Libros getReferenceById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<Libros> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> S save(S entity) {
		// TODO Auto-generated method stub
		return libroRepository.save(entity);
	}

	@Override
	public Optional<Libros> findById(Long id) {
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
		libroRepository.deleteById(id);
		
	}

	@Override
	public void delete(Libros entity) {
		// TODO Auto-generated method stub
		libroRepository.delete(entity);
		
		
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends Libros> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends Libros> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends Libros> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends Libros> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends Libros> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends Libros, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}

}
