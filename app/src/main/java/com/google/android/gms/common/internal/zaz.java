package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* loaded from: classes.dex */
public final class zaz extends RemoteCreator<zam> {

    /* renamed from: c, reason: collision with root package name */
    public static final zaz f10935c = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zaa(Context context, int i2, int i7) throws RemoteCreator.RemoteCreatorException {
        zaz zazVar = f10935c;
        try {
            zax zaxVar = new zax(1, i2, i7, null);
            return (View) ObjectWrapper.unwrap(zazVar.getRemoteCreatorInstance(context).zae(ObjectWrapper.wrap(context), zaxVar));
        } catch (Exception e3) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i2);
            sb.append(" and color ");
            sb.append(i7);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e3);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final zam getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof zam ? (zam) queryLocalInterface : new zam(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }
}
