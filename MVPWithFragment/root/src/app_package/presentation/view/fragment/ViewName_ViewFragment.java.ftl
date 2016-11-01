package ${packageName}.presentation.view.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.R;
import ${packageName}.presentation.presenter.${viewName}Presenter;
import ${packageName}.presentation.view.${viewName}View;
import ${packageName}.presentation.view.fragment.base.BaseViewFragment;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 *
 */
public class ${viewName}ViewFragment extends BaseViewFragment<${viewName}Presenter> implements ${viewName}View {

    public static ${viewName}ViewFragment createInstance() {
        return new ${viewName}ViewFragment();
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_${viewNameLoverCase}, container, false);
        ButterKnife.bind(this, rootView);
        return rootView;
    }

    @NonNull
    @Override
    public Context context() {
        return getContext();
    }

    @Override
    protected ${viewName}Presenter presenterInstance() {
        return new ${viewName}Presenter(this);
    }
}
