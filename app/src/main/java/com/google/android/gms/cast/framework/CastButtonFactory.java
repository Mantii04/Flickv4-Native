package com.google.android.gms.cast.framework;

import A.i;
import M.D;
import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import androidx.mediarouter.app.MediaRouteActionProvider;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzml;
import f1.L;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class CastButtonFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f9811a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f9812b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f9813c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f9814d;

    static {
        new Logger("CastButtonFactory");
        f9811a = new ArrayList();
        f9812b = new Object();
        f9813c = new ArrayList();
        f9814d = new Object();
    }

    private CastButtonFactory() {
    }

    public static MenuItem setUpMediaRouteButton(Context context, Menu menu, int i2) {
        L mergedSelector;
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(menu);
        MenuItem findItem = menu.findItem(i2);
        if (findItem == null) {
            Locale locale = Locale.ROOT;
            throw new IllegalArgumentException(i.g(i2, "menu doesn't contain a menu item whose ID is ", "."));
        }
        try {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) D.getActionProvider(findItem);
            if (mediaRouteActionProvider == null) {
                mediaRouteActionProvider = null;
            }
            if (mediaRouteActionProvider == null) {
                throw new IllegalArgumentException("cannot refreshButtonSelector with null mediaRouteActionProvider");
            }
            CastContext zza = CastContext.zza(context);
            if (zza != null && (mergedSelector = zza.getMergedSelector()) != null) {
                mediaRouteActionProvider.setRouteSelector(mergedSelector);
            }
            synchronized (f9812b) {
                f9811a.add(new WeakReference(findItem));
            }
            com.google.android.gms.internal.cast.zzo.zzd(zzml.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
            return findItem;
        } catch (IllegalArgumentException e3) {
            Locale locale2 = Locale.ROOT;
            throw new IllegalArgumentException(i.g(i2, "menu item with ID ", " doesn't have a MediaRouteActionProvider."), e3);
        }
    }

    public static void setUpMediaRouteButton(Context context, MediaRouteButton mediaRouteButton) {
        L mergedSelector;
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (mediaRouteButton != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            CastContext zza = CastContext.zza(context);
            if (zza != null && (mergedSelector = zza.getMergedSelector()) != null) {
                mediaRouteButton.setRouteSelector(mergedSelector);
            }
            synchronized (f9814d) {
                f9813c.add(new WeakReference(mediaRouteButton));
            }
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }
}
