package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class RemoteCreator<T> {

    /* renamed from: a, reason: collision with root package name */
    public final String f11101a;

    /* renamed from: b, reason: collision with root package name */
    public Object f11102b;

    @KeepForSdk
    public static class RemoteCreatorException extends Exception {
        @KeepForSdk
        public RemoteCreatorException(String str) {
            super(str);
        }

        @KeepForSdk
        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    @KeepForSdk
    public RemoteCreator(String str) {
        this.f11101a = str;
    }

    @KeepForSdk
    public abstract T getRemoteCreator(IBinder iBinder);

    @KeepForSdk
    public final T getRemoteCreatorInstance(Context context) throws RemoteCreatorException {
        if (this.f11102b == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f11102b = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.f11101a).newInstance());
            } catch (ClassNotFoundException e3) {
                throw new RemoteCreatorException("Could not load creator class.", e3);
            } catch (IllegalAccessException e7) {
                throw new RemoteCreatorException("Could not access creator.", e7);
            } catch (InstantiationException e8) {
                throw new RemoteCreatorException("Could not instantiate creator.", e8);
            }
        }
        return (T) this.f11102b;
    }
}
