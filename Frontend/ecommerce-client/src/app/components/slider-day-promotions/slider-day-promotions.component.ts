import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OfferCardProductComponent } from "../offer-card-product/offer-card-product.component";
import { FeaturedProductsComponent } from "../featured-products/featured-products.component";
import { ProductService } from '../../services/Product.service';
import { Product } from '../../models/product.model';
import { OnInit } from '@angular/core';

@Component({
  selector: 'app-slider-day-promotions',
  standalone: true,
  imports: [CommonModule, OfferCardProductComponent, FeaturedProductsComponent],
  templateUrl: './slider-day-promotions.component.html',
  styleUrl: './slider-day-promotions.component.scss'
})
export class SliderDayPromotionsComponent implements OnInit {
  
  products:Product[] = [];


  constructor(private productService: ProductService) { }

  displayedSlides = 4;
  currentIndex = 0;

  ngOnInit() {
    this.productService.getProducts().subscribe((products) => {
      this.products = products;
    });
    console.log(this.products);
  }


  previousSlide() {
    if (this.currentIndex > 0) {
      this.currentIndex -= 1;
    } else {
      this.currentIndex = this.products.length - this.displayedSlides;
    }
  }

  nextSlide() {
    if (this.currentIndex < this.products.length - this.displayedSlides) {
      this.currentIndex += 1;
    } else {
      this.currentIndex = 0;
    }
  }

}
