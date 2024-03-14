package com.awh.dressmart.ui.product;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import com.awh.dressmart.MainActivity;
import com.awh.dressmart.R;
import com.awh.dressmart.adapter.ProductAdapter;
import com.awh.dressmart.model.Category;
import com.awh.dressmart.model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class ProductFragment extends Fragment {
    private static final String TAG = "dressmart";
    private FirebaseFirestore firebaseFirestore;
    private GridView productView;
    private Category category;
    private List<Product> products;


    public ProductFragment(Category category) {
        this.category = category;
        // Required empty public constructor
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        firebaseFirestore = FirebaseFirestore.getInstance();
        products = new ArrayList<>();


       // insertSampleData();

    }


    private void insertSampleData() {
        CollectionReference products = firebaseFirestore.collection("products");

        List<Product> productsList = new ArrayList<>();
        productsList.add(new Product("P1", "Export Quality 3 Pieces Sleepsuit for Babies", "Export Quality 3 Pieces Sleepsuit for Babies and Kids Long Sleeves & Long Legs Boy and Girl Unisex Dress for Babies Long Leg Sleeping Suits for Baby Bodysuits Unisex Baby Bodysuits", "https://static-01.daraz.lk/p/7aea484a4ef2611f72f4d7aa0fefdeee.jpg", 2590, "5"));
        productsList.add(new Product("P2", "BRANDED 05 Baby Body Suits Short Sleeves", "BRANDED 05 Baby Body Suits Short Sleeves Pack Boy and Girl Unisex Dress for Babies Kids Cloths Baby Body Suite for Babies and Kids Short Sleeve Baby Suits Unisex Baby Bodysuits", "https://static-01.daraz.lk/p/d51aa1f3fad53746bdf5269baa42d642.jpg", 4000, "5"));
        productsList.add(new Product("P3", "Baby Wool Suit", "Baby Wool Suit / Wool / Baby Dress / Kids / Newborn / Cloths / Baby Jersey / Kids World (4Pcs))", "https://static-01.daraz.lk/p/269ee5e3119bff042d51a66f45199346.jpg", 590, "5"));

        productsList.add(new Product("P4", "White Color Long Sleeve Men's T Shirt", "White Color Long Sleeve Men's T Shirt New Style Material 160GSM", "https://static-01.daraz.lk/p/210341545dd51a7fe77e1be0ae9265ae.jpg", 1290, "1"));
        productsList.add(new Product("P5", "Tommy-Hilfiger Yellow Color Long Sleeve Men's T Shirt", "Tommy-Hilfiger Yellow Color Long Sleeve Men's T Shirt New Style Material 160GSM", "https://static-01.daraz.lk/p/ba1c9be5e0e0f74358b9788b3b108908.jpg", 1290, "1"));
        productsList.add(new Product("P6", "Tommy-Hilfiger Yellow Color Long Sleeve Men's T Shirt", "Tommy-Hilfiger Yellow Color Long Sleeve Men's T Shirt New Style Material 160GSM", "https://static-01.daraz.lk/p/ba1c9be5e0e0f74358b9788b3b108908.jpg", 1290, "1"));

        productsList.add(new Product("P7", "Yfashion Men Casual Cotton Linen Trousers", "Yfashion Men Casual Cotton Linen Trousers Large Size Wide-leg Long Pants Breathable Sweat-absorbing Trousers color", "https://static-01.daraz.lk/p/ba10ac3f48fd4256e82b0372c3761157.jpg", 4300, "2"));
        productsList.add(new Product("P8", "Yfashion Men Fashion Casual Ninth Pants", "Yfashion Men Fashion Casual Ninth Pants for Sports", "https://static-01.daraz.lk/p/da69a3308005596a5ed6680f71439ee4.jpg", 3500, "2"));
        productsList.add(new Product("P9", "Men's Trousers Straight High Waist Cotton", "Men's Trousers Straight High Waist Cotton Men Trousers Pants for Male Casual Trouser Man Pant", "https://static-01.daraz.lk/p/fb931f5e5f190ca84fadabbb277859a2.jpg", 4000, "2"));

        productsList.add(new Product("P10", "Mens 511 Slim Fit Denim Trousers", "Mens 511 Slim Fit Denim Trousers for Men Other brands - CK Denim Branded Premium Denim", "https://static-01.daraz.lk/p/4805dd6952c2930717ab610dd2cba6f0.jpg", 2990, "3"));
        productsList.add(new Product("P11", "Yfashion Men Casual Cotton Linen Trousers", "Yfashion Men Casual Cotton Linen Trousers Large Size Wide-leg Long Pants Breathable Sweat-absorbing Trousers color", "https://static-01.daraz.lk/p/ba10ac3f48fd4256e82b0372c3761157.jpg", 4300, "3"));
        productsList.add(new Product("P12", "Yfashion Men Casual Cotton Linen Trousers", "Yfashion Men Casual Cotton Linen Trousers Large Size Wide-leg Long Pants Breathable Sweat-absorbing Trousers color", "https://static-01.daraz.lk/p/ba10ac3f48fd4256e82b0372c3761157.jpg", 4300, "3"));



        for (Product p : productsList) {
            products.add(p);
        }

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        MainActivity activity = (MainActivity) getActivity();
        activity.showBottomNavigationView(false);

        return inflater.inflate(R.layout.fragment_product, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        productView = view.findViewById(R.id.product_product_list);

        ProductAdapter adapter = new ProductAdapter(view.getContext(), products);
        productView.setAdapter(adapter);


//        if (this.category != null) {
//            firebaseFirestore.collection("products").whereEqualTo("category", this.category.getId()).get()
//                    .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
//                        @Override
//                        public void onComplete(@NonNull Task<QuerySnapshot> task) {
//                            if (task.isSuccessful()) {
//                                products.clear();
//                                for (QueryDocumentSnapshot snapshot : task.getResult()) {
//                                    Product product = snapshot.toObject(Product.class);
//                                    products.add(product);
//                                }
//                                adapter.notifyDataSetChanged();
//
//                               if (task.getResult().isEmpty()){
//                                 productView.setVisibility(View.GONE);
//                                    view.findViewById(R.id.product_no_product_text).setVisibility(View.VISIBLE);
//                                }
//                            }
//                        }
//                    });
//        }

        firebaseFirestore.collection("products").get()
                .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
                    @Override
                    public void onComplete(@NonNull Task<QuerySnapshot> task) {
                        if (task.isSuccessful()) {
                            products.clear();
                            for (QueryDocumentSnapshot snapshot : task.getResult()) {
                                Product product = snapshot.toObject(Product.class);
                                products.add(product);
                            }
                            adapter.notifyDataSetChanged();
                        }
                    }
                });

        productView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                Product product = products.get(i);
                FragmentManager fragmentManager = getParentFragmentManager();
                FragmentTransaction transaction = fragmentManager.beginTransaction();
                transaction.replace(R.id.container, new ProductDetailsFragment(product));
                transaction.addToBackStack(null);
                transaction.commit();
            }
        });


        productView.setOnScrollListener(new AbsListView.OnScrollListener() {

            @Override
            public void onScrollStateChanged(AbsListView absListView, int i) {

            }

            @Override
            public void onScroll(AbsListView absListView, int firstVisibleItem, int visibleItemCount, int totalItemCount) {

                final int lastItem = firstVisibleItem + visibleItemCount;
                if (lastItem == totalItemCount) {

//                    // load more products like pagination

//                    view.findViewById(R.id.product_message).setVisibility(View.VISIBLE);
//
//                    products.add(new Product("P1", "T Shirt", "asfadasd", "", 2200, "1"));
//                    products.add(new Product("P2", "Trouser", "asfadasd", "", 4000, "1"));
//                    products.add(new Product("P3", "Jeans", "asfadasd", "", 3200, "1"));
//                    products.add(new Product("P4", "Belt", "asfadasd", "", 1500, "1"));
//                    products.add(new Product("P5", "Short", "asfadasd", "", 2200, "1"));
//                    adapter.notifyDataSetChanged();
//
//
//                    view.findViewById(R.id.product_message).setVisibility(View.INVISIBLE);
                }

            }
        });


    }
}