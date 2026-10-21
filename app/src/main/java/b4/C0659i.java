package b4;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.VersionedPackage;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.List;

/* renamed from: b4.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0659i extends PackageManager {

    /* renamed from: a, reason: collision with root package name */
    public final PackageManager f8494a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8495b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8496c;

    public C0659i(PackageManager packageManager, String str, String str2) {
        this.f8494a = packageManager;
        this.f8495b = str;
        this.f8496c = str2;
    }

    public final boolean a(String str) {
        return this.f8495b.equals(str) || this.f8496c.equals(str) || str == null;
    }

    @Override // android.content.pm.PackageManager
    public void addPackageToPreferred(String str) {
        this.f8494a.addPackageToPreferred(str);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        return this.f8494a.addPermission(permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        return this.f8494a.addPermissionAsync(permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
        this.f8494a.addPreferredActivity(intentFilter, i2, componentNameArr, componentName);
    }

    @Override // android.content.pm.PackageManager
    public boolean canRequestPackageInstalls() {
        boolean canRequestPackageInstalls;
        canRequestPackageInstalls = this.f8494a.canRequestPackageInstalls();
        return canRequestPackageInstalls;
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        return this.f8494a.canonicalToCurrentPackageNames(strArr);
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        if (a(str2)) {
            str2 = this.f8496c;
        }
        return this.f8494a.checkPermission(str, str2);
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i2, int i7) {
        return 0;
    }

    @Override // android.content.pm.PackageManager
    public void clearInstantAppCookie() {
        this.f8494a.clearInstantAppCookie();
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        this.f8494a.clearPackagePreferredActivities(str);
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i2, int i7, long j7) {
        this.f8494a.extendVerificationTimeout(i2, i7, j7);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(ComponentName componentName) {
        return this.f8494a.getActivityBanner(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) {
        return this.f8494a.getActivityIcon(componentName);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getActivityInfo(ComponentName componentName, int i2) {
        return this.f8494a.getActivityInfo(componentName, i2);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) {
        return this.f8494a.getActivityLogo(componentName);
    }

    @Override // android.content.pm.PackageManager
    public List getAllPermissionGroups(int i2) {
        return this.f8494a.getAllPermissionGroups(i2);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        return this.f8494a.getApplicationBanner(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        if (a(str)) {
            str = this.f8496c;
        }
        return this.f8494a.getApplicationEnabledSetting(str);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        return this.f8494a.getApplicationIcon(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i2) {
        boolean a7 = a(str);
        PackageManager packageManager = this.f8494a;
        if (!a7) {
            return packageManager.getApplicationInfo(str, i2);
        }
        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.f8496c, i2);
        applicationInfo.packageName = this.f8495b;
        return applicationInfo;
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        return this.f8494a.getApplicationLabel(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
        return this.f8494a.getApplicationLogo(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public ChangedPackages getChangedPackages(int i2) {
        ChangedPackages changedPackages;
        changedPackages = this.f8494a.getChangedPackages(i2);
        return changedPackages;
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        return this.f8494a.getComponentEnabledSetting(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        return this.f8494a.getDefaultActivityIcon();
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i2, ApplicationInfo applicationInfo) {
        return this.f8494a.getDrawable(str, i2, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public List getInstalledApplications(int i2) {
        return this.f8494a.getInstalledApplications(i2);
    }

    @Override // android.content.pm.PackageManager
    public List getInstalledPackages(int i2) {
        return this.f8494a.getInstalledPackages(i2);
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        if (a(str)) {
            str = this.f8496c;
        }
        return this.f8494a.getInstallerPackageName(str);
    }

    @Override // android.content.pm.PackageManager
    public byte[] getInstantAppCookie() {
        byte[] instantAppCookie;
        instantAppCookie = this.f8494a.getInstantAppCookie();
        return instantAppCookie;
    }

    @Override // android.content.pm.PackageManager
    public int getInstantAppCookieMaxBytes() {
        int instantAppCookieMaxBytes;
        instantAppCookieMaxBytes = this.f8494a.getInstantAppCookieMaxBytes();
        return instantAppCookieMaxBytes;
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2) {
        return this.f8494a.getInstrumentationInfo(componentName, i2);
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        return this.f8494a.getLaunchIntentForPackage(str);
    }

    @Override // android.content.pm.PackageManager
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        return this.f8494a.getLaunchIntentForPackage(str);
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i2) {
        return this.f8495b;
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) {
        return this.f8494a.getPackageGids(str);
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int i2) {
        String packageName;
        packageName = versionedPackage.getPackageName();
        return getPackageInfo(packageName, i2);
    }

    @Override // android.content.pm.PackageManager
    public PackageInstaller getPackageInstaller() {
        return this.f8494a.getPackageInstaller();
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUid(String str, int i2) {
        int packageUid;
        if (a(str)) {
            str = this.f8496c;
        }
        packageUid = this.f8494a.getPackageUid(str, i2);
        return packageUid;
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i2) {
        return new String[]{this.f8495b};
    }

    @Override // android.content.pm.PackageManager
    public List getPackagesHoldingPermissions(String[] strArr, int i2) {
        return this.f8494a.getPackagesHoldingPermissions(strArr, i2);
    }

    @Override // android.content.pm.PackageManager
    public PermissionGroupInfo getPermissionGroupInfo(String str, int i2) {
        return this.f8494a.getPermissionGroupInfo(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i2) {
        return this.f8494a.getPermissionInfo(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List list, List list2, String str) {
        return this.f8494a.getPreferredActivities(list, list2, str);
    }

    @Override // android.content.pm.PackageManager
    public List getPreferredPackages(int i2) {
        return this.f8494a.getPreferredPackages(i2);
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i2) {
        return this.f8494a.getProviderInfo(componentName, i2);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i2) {
        return this.f8494a.getReceiverInfo(componentName, i2);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) {
        return this.f8494a.getResourcesForActivity(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) {
        return this.f8494a.getResourcesForApplication(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public ServiceInfo getServiceInfo(ComponentName componentName, int i2) {
        return this.f8494a.getServiceInfo(componentName, i2);
    }

    @Override // android.content.pm.PackageManager
    public List getSharedLibraries(int i2) {
        List sharedLibraries;
        sharedLibraries = this.f8494a.getSharedLibraries(i2);
        return sharedLibraries;
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        return this.f8494a.getSystemAvailableFeatures();
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        return this.f8494a.getSystemSharedLibraryNames();
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i2, ApplicationInfo applicationInfo) {
        return this.f8494a.getText(str, i2, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i2) {
        return this.f8494a.getUserBadgedDrawableForDensity(drawable, userHandle, rect, i2);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        return this.f8494a.getUserBadgedIcon(drawable, userHandle);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        return this.f8494a.getUserBadgedLabel(charSequence, userHandle);
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i2, ApplicationInfo applicationInfo) {
        return this.f8494a.getXml(str, i2, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        return this.f8494a.hasSystemFeature(str);
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp() {
        boolean isInstantApp;
        isInstantApp = this.f8494a.isInstantApp();
        return isInstantApp;
    }

    @Override // android.content.pm.PackageManager
    public boolean isPermissionRevokedByPolicy(String str, String str2) {
        return this.f8494a.isPermissionRevokedByPolicy(str, str2);
    }

    @Override // android.content.pm.PackageManager
    public boolean isSafeMode() {
        return this.f8494a.isSafeMode();
    }

    @Override // android.content.pm.PackageManager
    public List queryBroadcastReceivers(Intent intent, int i2) {
        return this.f8494a.queryBroadcastReceivers(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryContentProviders(String str, int i2, int i7) {
        return this.f8494a.queryContentProviders(str, i2, i7);
    }

    @Override // android.content.pm.PackageManager
    public List queryInstrumentation(String str, int i2) {
        return this.f8494a.queryInstrumentation(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryIntentActivities(Intent intent, int i2) {
        return this.f8494a.queryIntentActivities(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i2) {
        return this.f8494a.queryIntentActivityOptions(componentName, intentArr, intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryIntentContentProviders(Intent intent, int i2) {
        return this.f8494a.queryIntentContentProviders(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryIntentServices(Intent intent, int i2) {
        return this.f8494a.queryIntentServices(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public List queryPermissionsByGroup(String str, int i2) {
        return this.f8494a.queryPermissionsByGroup(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        this.f8494a.removePackageFromPreferred(str);
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        this.f8494a.removePermission(str);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i2) {
        return this.f8494a.resolveActivity(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i2) {
        return this.f8494a.resolveContentProvider(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i2) {
        return this.f8494a.resolveService(intent, i2);
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationCategoryHint(String str, int i2) {
        this.f8494a.setApplicationCategoryHint(str, i2);
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i2, int i7) {
        this.f8494a.setApplicationEnabledSetting(str, i2, i7);
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i2, int i7) {
        this.f8494a.setComponentEnabledSetting(componentName, i2, i7);
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        this.f8494a.setInstallerPackageName(str, str2);
    }

    @Override // android.content.pm.PackageManager
    public void updateInstantAppCookie(byte[] bArr) {
        this.f8494a.updateInstantAppCookie(bArr);
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i2, int i7) {
        this.f8494a.verifyPendingInstall(i2, i7);
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        return this.f8494a.checkSignatures(str, str2);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(Intent intent) {
        return this.f8494a.getActivityBanner(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(Intent intent) {
        return this.f8494a.getActivityIcon(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(Intent intent) {
        return this.f8494a.getActivityLogo(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(String str) {
        return this.f8494a.getApplicationBanner(str);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) {
        return this.f8494a.getApplicationIcon(str);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) {
        return this.f8494a.getApplicationLogo(str);
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str, int i2) {
        int[] packageGids;
        packageGids = this.f8494a.getPackageGids(str, (PackageManager.PackageInfoFlags) null);
        return packageGids;
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i2) {
        boolean a7 = a(str);
        PackageManager packageManager = this.f8494a;
        if (!a7) {
            return packageManager.getPackageInfo(str, i2);
        }
        PackageInfo packageInfo = packageManager.getPackageInfo(this.f8496c, i2);
        String str2 = this.f8495b;
        packageInfo.packageName = str2;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo != null) {
            applicationInfo.packageName = str2;
        }
        return packageInfo;
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) {
        return this.f8494a.getResourcesForApplication(str);
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str, int i2) {
        boolean hasSystemFeature;
        hasSystemFeature = this.f8494a.hasSystemFeature(str, i2);
        return hasSystemFeature;
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp(String str) {
        boolean isInstantApp;
        isInstantApp = this.f8494a.isInstantApp();
        return isInstantApp;
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        return strArr;
    }
}
