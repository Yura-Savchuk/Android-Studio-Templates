package ${packageName}.presentation.presenter;

/**
 * Interface for presenter class. Methods must be attached to Activity/Fragment class.
 */
public interface Presenter {

    /**
     * Called on Activity/Fragment perform onCreate method.
     */
    void onCreate();

    /**
     * Called on Activity/Fragment perform onResume method.
     */
    void onResume();

    /**
     * Called on Activity/Fragment perform onPause method.
     */
    void onPause();

    /**
     * Called on Activity/Fragment perform onDestroy method.
     */
    void onDestroy();

}
