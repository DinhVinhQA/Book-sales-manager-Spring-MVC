package com.khosach.mapper;

import com.khosach.dto.CartDTO;
import com.khosach.dto.ProductDTO;
import com.khosach.entity.CartEntity;
import com.khosach.entity.ProductEntity;
import com.khosach.entity.UserEntity;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-08T10:33:50+0700",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_161 (Oracle Corporation)"
)
public class ICartMapperImpl implements ICartMapper {

    @Override
    public CartDTO toCartDTO(CartEntity cartEntity) {
        if ( cartEntity == null ) {
            return null;
        }

        CartDTO cartDTO = new CartDTO();

        cartDTO.setUserID( cartEntityUsersId( cartEntity ) );
        cartDTO.setProduct( productEntityToProductDTO( cartEntity.getProducts() ) );
        cartDTO.setCartID( cartEntity.getCartID() );
        cartDTO.setQuantity( cartEntity.getQuantity() );

        return cartDTO;
    }

    @Override
    public List<CartDTO> toListCartDTO(List<CartEntity> listCartEntity) {
        if ( listCartEntity == null ) {
            return null;
        }

        List<CartDTO> list = new ArrayList<CartDTO>( listCartEntity.size() );
        for ( CartEntity cartEntity : listCartEntity ) {
            list.add( toCartDTO( cartEntity ) );
        }

        return list;
    }

    @Override
    public CartEntity toCartEntity(CartDTO cartDTO) {
        if ( cartDTO == null ) {
            return null;
        }

        CartEntity cartEntity = new CartEntity();

        cartEntity.setUsers( cartDTOToUserEntity( cartDTO ) );
        cartEntity.setProducts( productDTOToProductEntity( cartDTO.getProduct() ) );
        cartEntity.setCartID( cartDTO.getCartID() );
        cartEntity.setQuantity( cartDTO.getQuantity() );

        return cartEntity;
    }

    @Override
    public List<CartEntity> toListCartEntity(List<CartDTO> listCartDTO) {
        if ( listCartDTO == null ) {
            return null;
        }

        List<CartEntity> list = new ArrayList<CartEntity>( listCartDTO.size() );
        for ( CartDTO cartDTO : listCartDTO ) {
            list.add( toCartEntity( cartDTO ) );
        }

        return list;
    }

    private Long cartEntityUsersId(CartEntity cartEntity) {
        if ( cartEntity == null ) {
            return null;
        }
        UserEntity users = cartEntity.getUsers();
        if ( users == null ) {
            return null;
        }
        Long id = users.getId();
        if ( id == null ) {
            return null;
        }
        return id;
    }

    protected ProductDTO productEntityToProductDTO(ProductEntity productEntity) {
        if ( productEntity == null ) {
            return null;
        }

        ProductDTO productDTO = new ProductDTO();

        productDTO.setDateAdded( productEntity.getDateAdded() );
        productDTO.setProductID( productEntity.getProductID() );
        productDTO.setProductName( productEntity.getProductName() );
        productDTO.setQuantity( productEntity.getQuantity() );
        productDTO.setPrice( productEntity.getPrice() );
        productDTO.setSalePrice( productEntity.getSalePrice() );
        productDTO.setAuthor( productEntity.getAuthor() );
        productDTO.setPublisher( productEntity.getPublisher() );
        productDTO.setYearOfPublication( productEntity.getYearOfPublication() );
        productDTO.setThumbnail( productEntity.getThumbnail() );
        productDTO.setDescription( productEntity.getDescription() );
        productDTO.setNumberOfPages( productEntity.getNumberOfPages() );
        productDTO.setStatus( productEntity.getStatus() );

        return productDTO;
    }

    protected UserEntity cartDTOToUserEntity(CartDTO cartDTO) {
        if ( cartDTO == null ) {
            return null;
        }

        UserEntity userEntity = new UserEntity();

        userEntity.setId( cartDTO.getUserID() );

        return userEntity;
    }

    protected ProductEntity productDTOToProductEntity(ProductDTO productDTO) {
        if ( productDTO == null ) {
            return null;
        }

        ProductEntity productEntity = new ProductEntity();

        productEntity.setDateAdded( productDTO.getDateAdded() );
        productEntity.setProductID( productDTO.getProductID() );
        productEntity.setProductName( productDTO.getProductName() );
        productEntity.setQuantity( productDTO.getQuantity() );
        productEntity.setPrice( productDTO.getPrice() );
        productEntity.setSalePrice( productDTO.getSalePrice() );
        productEntity.setAuthor( productDTO.getAuthor() );
        productEntity.setPublisher( productDTO.getPublisher() );
        productEntity.setYearOfPublication( productDTO.getYearOfPublication() );
        productEntity.setThumbnail( productDTO.getThumbnail() );
        productEntity.setDescription( productDTO.getDescription() );
        productEntity.setNumberOfPages( productDTO.getNumberOfPages() );
        productEntity.setStatus( productDTO.getStatus() );

        return productEntity;
    }
}
