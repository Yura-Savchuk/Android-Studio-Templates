package ${packageName}.presentation.presenter;

import android.support.annotation.NonNull;

import ${packageName}.presentation.view.BaseView;

/**
 * Base exemplar of Presenter class.
 */
public class BasePresenter<T extends BaseView> implements Presenter {

    @NonNull
    protected final T view;

    public BasePresenter(@NonNull T view) {
        this.view = view;
    }

    @Override
    public void onCreate() {

    }

    @Override
    public void onResume() {

    }

    @Override
    public void onPause() {

    }

    @Override
    public void onDestroy() {

    }

}
