package com.awh.dressmart.ui.home;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.awh.dressmart.MainActivity;
import com.awh.dressmart.R;
import com.awh.dressmart.adapter.SliderAdapter;
import com.awh.dressmart.model.SliderItem;
import com.smarteist.autoimageslider.IndicatorView.animation.type.IndicatorAnimationType;
import com.smarteist.autoimageslider.SliderAnimations;
import com.smarteist.autoimageslider.SliderView;


public class HomeFragment extends Fragment {


    public HomeFragment() {
        // Required empty public constructor
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        MainActivity activity =(MainActivity) getActivity();
        activity.showBottomNavigationView(true);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        return inflater.inflate(R.layout.fragment_home, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        SliderView sliderView = view.findViewById(R.id.imageSlider);
        SliderAdapter sliderAdapter = new SliderAdapter(view.getContext());
        sliderAdapter.addItem(new SliderItem("", "https://d1hj68zhrbkzii.cloudfront.net/wp-content/uploads/2022/06/Gents-formal-Fashion-Bug-Sri-Lanka.jpg"));
        sliderAdapter.addItem(new SliderItem("", "https://icms-image.slatic.net/images/ims-web/716140ba-82c0-49f5-b398-09d714513eff.jpg"));
        sliderAdapter.addItem(new SliderItem("", "https://icms-image.slatic.net/images/ims-web/b9ed7e50-0c52-448e-86af-2b2d86731d85.jpg"));
        sliderAdapter.addItem(new SliderItem("", "https://d1hj68zhrbkzii.cloudfront.net/wp-content/uploads/2022/05/Web-Slider-Jobbs-Fashion-Bug-Sri-Lanka.jpg"));

        sliderView.setSliderAdapter(sliderAdapter);

        sliderView.setIndicatorAnimation(IndicatorAnimationType.WORM);
        sliderView.setSliderTransformAnimation(SliderAnimations.SIMPLETRANSFORMATION);
        sliderView.setScrollTimeInSec(5);
        sliderView.startAutoCycle();

    }
}