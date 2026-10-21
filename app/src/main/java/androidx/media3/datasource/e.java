package androidx.media3.datasource;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.remoteconfig.CustomSignals;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.google.firebase.remoteconfig.internal.ConfigCacheClient;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7170b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7171e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7172f;

    public /* synthetic */ e(int i2, Object obj, Object obj2) {
        this.f7170b = i2;
        this.f7171e = obj;
        this.f7172f = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bitmap lambda$decodeBitmap$1;
        Bitmap lambda$loadBitmap$2;
        Object lambda$updateRolloutsState$1;
        Void lambda$setCustomSignals$8;
        Void lambda$setConfigSettingsAsync$5;
        Void lambda$put$0;
        switch (this.f7170b) {
            case 0:
                lambda$decodeBitmap$1 = ((DataSourceBitmapLoader) this.f7171e).lambda$decodeBitmap$1((byte[]) this.f7172f);
                return lambda$decodeBitmap$1;
            case 1:
                lambda$loadBitmap$2 = ((DataSourceBitmapLoader) this.f7171e).lambda$loadBitmap$2((Uri) this.f7172f);
                return lambda$loadBitmap$2;
            case 2:
                lambda$updateRolloutsState$1 = ((UserMetadata) this.f7171e).lambda$updateRolloutsState$1((List) this.f7172f);
                return lambda$updateRolloutsState$1;
            case 3:
                lambda$setCustomSignals$8 = ((FirebaseRemoteConfig) this.f7171e).lambda$setCustomSignals$8((CustomSignals) this.f7172f);
                return lambda$setCustomSignals$8;
            case 4:
                lambda$setConfigSettingsAsync$5 = ((FirebaseRemoteConfig) this.f7171e).lambda$setConfigSettingsAsync$5((FirebaseRemoteConfigSettings) this.f7172f);
                return lambda$setConfigSettingsAsync$5;
            default:
                lambda$put$0 = ((ConfigCacheClient) this.f7171e).lambda$put$0((ConfigContainer) this.f7172f);
                return lambda$put$0;
        }
    }
}
