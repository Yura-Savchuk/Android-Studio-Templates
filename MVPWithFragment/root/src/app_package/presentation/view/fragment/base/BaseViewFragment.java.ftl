package ${packageName}.presentation.view.fragment.base;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;

import ${packageName}.presentation.presenter.BasePresenter;
import ${packageName}.presentation.view.BaseView;

/**
 * Base fragment for mvp view.
 */
public abstract class BaseViewFragment<T extends BasePresenter> extends Fragment implements BaseView {

    private T presenter;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        presenter.onCreate();
    }

    @Override
    public void onResume() {
        super.onResume();
        presenter.onResume();
    }

    @Override
    public void onPause() {
        super.onPause();
        presenter.onPause();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        presenter.onDestroy();
    }

    @NonNull
    @Override
    public Context context() {
        return getContext();
    }

    /**
     * Lazy create instance of {@link BaseViewFragment#presenter}.
     * @return
     */
    protected final T presenter() {
        if (this.presenter == null) {
            this.presenter = presenterInstance();
        }
        return this.presenter;
    }

    /**
     * Return presenter instance in this methods.
     * @return presenter instance.
     */
    protected abstract T presenterInstance();

}
