<?xml version="1.0"?>
<recipe>

    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <dependency mavenUrl="com.jakewharton:butterknife:+"/>

    <instantiate from="root/res/layout/fragment_view_name.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/fragment_${viewNameLoverCase}.xml" />
    <instantiate from="root/src/app_package/presentation/presenter/ViewName_Presenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/presentation/presenter/${viewName}Presenter.java" />
    <instantiate from="root/src/app_package/presentation/view/ViewName_View.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/presentation/view/${viewName}View.java" />
    <instantiate from="root/src/app_package/presentation/view/fragment/ViewName_ViewFragment.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/presentation/view/fragment/${viewName}ViewFragment.java" />
    <instantiate from="root/src/app_package/presentation/view/fragment/ViewName_ViewFragment.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/presentation/view/fragment/${viewName}ViewFragment.java" />

    <instantiate from="root/src/app_package/presentation/presenter/BasePresenter.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/presentation/presenter/BasePresenter.java" />
    <instantiate from="root/src/app_package/presentation/presenter/Presenter.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/presentation/presenter/Presenter.java" />
    <instantiate from="root/src/app_package/presentation/view/BaseView.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/presentation/view/BaseView.java" />
    <instantiate from="root/src/app_package/presentation/view/fragment/base/BaseViewFragment.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/presentation/view/fragment/base/BaseViewFragment.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/view/fragment/${viewName}ViewFragment.java" />

</recipe>
