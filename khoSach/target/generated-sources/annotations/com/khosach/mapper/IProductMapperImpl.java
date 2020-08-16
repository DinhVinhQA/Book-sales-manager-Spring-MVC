package com.khosach.mapper;

import com.khosach.dto.ProductDTO;
import com.khosach.entity.GroupProductEntity;
import com.khosach.entity.ProductEntity;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2020-06-08T10:33:50+0700",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_161 (Oracle Corporation)"
)
public class IProductMapperImpl implements IProductMapper {

    @Override
    public ProductDTO toProductDTO(ProductEntity productEntity) {
        if ( productEntity == null ) {
            return null;
        }

        ProductDTO productDTO = new ProductDTO();

        productDTO.setGroupProductID( productEntityGroupProductEntityGroupProductID( productEntity ) );
        productDTO.setGroupProductName( productEntityGroupProductEntityGroupProductName( productEntity ) );
        productDTO.setDelete( productEntity.getIsDelete() );
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

    @Override
    public List<ProductDTO> toListProductDTO(List<ProductEntity> listProductEntity) {
        if ( listProductEntity == null ) {
            return null;
        }

        List<ProductDTO> list = new ArrayList<ProductDTO>( listProductEntity.size() );
        for ( ProductEntity productEntity : listProductEntity ) {
            list.add( toProductDTO( productEntity ) );
        }

        return list;
    }

    @Override
    public ProductEntity toProductEntity(ProductDTO productDTO) {
        if ( productDTO == null ) {
            return null;
        }

        ProductEntity productEntity = new ProductEntity();

        productEntity.setGroupProductEntity( productDTOToGroupProductEntity( productDTO ) );
        productEntity.setIsDelete( productDTO.getDelete() );
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

    @Override
    public List<ProductEntity> toListProductEntity(List<ProductDTO> listProductDTO) {
        if ( listProductDTO == null ) {
            return null;
        }

        List<ProductEntity> list = new ArrayList<ProductEntity>( listProductDTO.size() );
        for ( ProductDTO productDTO : listProductDTO ) {
            list.add( toProductEntity( productDTO ) );
        }

        return list;
    }

    private Long productEntityGroupProductEntityGroupProductID(ProductEntity productEntity) {
        if ( productEntity == null ) {
            return null;
        }
        GroupProductEntity groupProductEntity = productEntity.getGroupProductEntity();
        if ( groupProductEntity == null ) {
            return null;
        }
        Long groupProductID = groupProductEntity.getGroupProductID();
        if ( groupProductID == null ) {
            return null;
        }
        return groupProductID;
    }

    private String productEntityGroupProductEntityGroupProductName(ProductEntity productEntity) {
        if ( productEntity == null ) {
            return null;
        }
        GroupProductEntity groupProductEntity = productEntity.getGroupProductEntity();
        if ( groupProductEntity == null ) {
            return null;
        }
        String groupProductName = groupProductEntity.getGroupProductName();
        if ( groupProductName == null ) {
            return null;
        }
        return groupProductName;
    }

    protected GroupProductEntity productDTOToGroupProductEntity(ProductDTO productDTO) {
        if ( productDTO == null ) {
            return null;
        }

        GroupProductEntity groupProductEntity = new GroupProductEntity();

        groupProductEntity.setGroupProductName( productDTO.getGroupProductName() );
        groupProductEntity.setGroupProductID( productDTO.getGroupProductID() );

        return groupProductEntity;
    }
}
