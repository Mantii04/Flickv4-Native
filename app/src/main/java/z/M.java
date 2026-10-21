package z;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class M implements InterfaceC1976w {

    /* renamed from: a, reason: collision with root package name */
    public final Notification.Builder f21348a;

    /* renamed from: b, reason: collision with root package name */
    public final C1954B f21349b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f21350c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [android.net.Uri, java.lang.CharSequence, java.lang.String, long[]] */
    /* JADX WARN: Type inference failed for: r5v30 */
    public M(C1954B c1954b) {
        ?? r52;
        int i2;
        Bundle[] bundleArr;
        ArrayList arrayList;
        RemoteInput[] remoteInputArr;
        new ArrayList();
        this.f21350c = new Bundle();
        this.f21349b = c1954b;
        Context context = c1954b.f21325a;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f21348a = I.a(context, c1954b.f21342r);
        } else {
            this.f21348a = new Notification.Builder(c1954b.f21325a);
        }
        Notification notification = c1954b.f21345u;
        int i7 = 0;
        this.f21348a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c1954b.f21329e).setContentText(c1954b.f21330f).setContentInfo(null).setContentIntent(c1954b.f21331g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(0).setProgress(c1954b.f21336l, c1954b.f21337m, c1954b.f21338n);
        Notification.Builder builder = this.f21348a;
        IconCompat iconCompat = c1954b.f21332h;
        G.b(builder, iconCompat == null ? null : iconCompat.toIcon(context));
        this.f21348a.setSubText(null).setUsesChronometer(false).setPriority(c1954b.f21333i);
        Iterator it = c1954b.f21326b.iterator();
        while (it.hasNext()) {
            y yVar = (y) it.next();
            IconCompat iconCompat2 = yVar.getIconCompat();
            Notification.Action.Builder a7 = G.a(iconCompat2 != null ? iconCompat2.toIcon() : null, yVar.getTitle(), yVar.getActionIntent());
            if (yVar.getRemoteInputs() != null) {
                U[] remoteInputs = yVar.getRemoteInputs();
                if (remoteInputs == null) {
                    remoteInputArr = null;
                } else {
                    remoteInputArr = new RemoteInput[remoteInputs.length];
                    for (int i8 = i7; i8 < remoteInputs.length; i8++) {
                        U u6 = remoteInputs[i8];
                        remoteInputArr[i8] = T.fromCompat(null);
                    }
                }
                for (RemoteInput remoteInput : remoteInputArr) {
                    E.c(a7, remoteInput);
                }
            }
            Bundle bundle = yVar.getExtras() != null ? new Bundle(yVar.getExtras()) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", yVar.getAllowGeneratedReplies());
            int i9 = Build.VERSION.SDK_INT;
            if (i9 >= 24) {
                H.a(a7, yVar.getAllowGeneratedReplies());
            }
            bundle.putInt("android.support.action.semanticAction", yVar.getSemanticAction());
            if (i9 >= 28) {
                J.b(a7, yVar.getSemanticAction());
            }
            if (i9 >= 29) {
                K.c(a7, yVar.isContextual());
            }
            if (i9 >= 31) {
                L.a(a7, yVar.isAuthenticationRequired());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", yVar.getShowsUserInterface());
            E.b(a7, bundle);
            E.a(this.f21348a, E.d(a7));
            i7 = 0;
        }
        Bundle bundle2 = c1954b.f21340p;
        if (bundle2 != null) {
            this.f21350c.putAll(bundle2);
        }
        int i10 = Build.VERSION.SDK_INT;
        this.f21348a.setShowWhen(c1954b.f21334j);
        E.i(this.f21348a, c1954b.f21339o);
        E.g(this.f21348a, null);
        E.j(this.f21348a, null);
        E.h(this.f21348a, false);
        F.b(this.f21348a, null);
        F.c(this.f21348a, 0);
        F.f(this.f21348a, c1954b.f21341q);
        F.d(this.f21348a, null);
        F.e(this.f21348a, notification.sound, notification.audioAttributes);
        ArrayList arrayList2 = c1954b.f21346v;
        ArrayList arrayList3 = c1954b.f21327c;
        if (i10 < 28) {
            if (arrayList3 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList3.size());
                Iterator it2 = arrayList3.iterator();
                if (it2.hasNext()) {
                    throw b.c.g(it2);
                }
            }
            if (arrayList != null) {
                if (arrayList2 == null) {
                    arrayList2 = arrayList;
                } else {
                    p.i iVar = new p.i(arrayList2.size() + arrayList.size());
                    iVar.addAll(arrayList);
                    iVar.addAll(arrayList2);
                    arrayList2 = new ArrayList(iVar);
                }
            }
        }
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                F.a(this.f21348a, (String) it3.next());
            }
        }
        ArrayList arrayList4 = c1954b.f21328d;
        if (arrayList4.size() > 0) {
            Bundle bundle3 = c1954b.getExtras().getBundle("android.car.EXTENSIONS");
            bundle3 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle4 = new Bundle(bundle3);
            Bundle bundle5 = new Bundle();
            for (int i11 = 0; i11 < arrayList4.size(); i11++) {
                String num = Integer.toString(i11);
                y yVar2 = (y) arrayList4.get(i11);
                Bundle bundle6 = new Bundle();
                IconCompat iconCompat3 = yVar2.getIconCompat();
                bundle6.putInt("icon", iconCompat3 != null ? iconCompat3.getResId() : 0);
                bundle6.putCharSequence("title", yVar2.getTitle());
                bundle6.putParcelable("actionIntent", yVar2.getActionIntent());
                Bundle bundle7 = yVar2.getExtras() != null ? new Bundle(yVar2.getExtras()) : new Bundle();
                bundle7.putBoolean("android.support.allowGeneratedReplies", yVar2.getAllowGeneratedReplies());
                bundle6.putBundle("extras", bundle7);
                U[] remoteInputs2 = yVar2.getRemoteInputs();
                if (remoteInputs2 == null) {
                    bundleArr = null;
                } else {
                    bundleArr = new Bundle[remoteInputs2.length];
                    if (remoteInputs2.length > 0) {
                        U u7 = remoteInputs2[0];
                        new Bundle();
                        throw null;
                    }
                }
                bundle6.putParcelableArray("remoteInputs", bundleArr);
                bundle6.putBoolean("showsUserInterface", yVar2.getShowsUserInterface());
                bundle6.putInt("semanticAction", yVar2.getSemanticAction());
                bundle5.putBundle(num, bundle6);
            }
            bundle3.putBundle("invisible_actions", bundle5);
            bundle4.putBundle("invisible_actions", bundle5);
            c1954b.getExtras().putBundle("android.car.EXTENSIONS", bundle3);
            this.f21350c.putBundle("android.car.EXTENSIONS", bundle4);
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 24) {
            this.f21348a.setExtras(c1954b.f21340p);
            r52 = 0;
            H.e(this.f21348a, null);
        } else {
            r52 = 0;
        }
        if (i12 >= 26) {
            I.b(this.f21348a, 0);
            I.e(this.f21348a, r52);
            I.f(this.f21348a, r52);
            I.g(this.f21348a, 0L);
            I.d(this.f21348a, 0);
            if (!TextUtils.isEmpty(c1954b.f21342r)) {
                this.f21348a.setSound(r52).setDefaults(0).setLights(0, 0, 0).setVibrate(r52);
            }
        }
        if (i12 >= 28) {
            Iterator it4 = arrayList3.iterator();
            if (it4.hasNext()) {
                throw b.c.g(it4);
            }
        }
        if (i12 >= 29) {
            K.a(this.f21348a, c1954b.f21344t);
            K.b(this.f21348a, AbstractC1953A.toPlatform(null));
        }
        if (i12 < 31 || (i2 = c1954b.f21343s) == 0) {
            return;
        }
        L.b(this.f21348a, i2);
    }

    public Notification build() {
        Bundle extras;
        RemoteViews makeHeadsUpContentView;
        RemoteViews makeBigContentView;
        C1954B c1954b = this.f21349b;
        C c7 = c1954b.f21335k;
        if (c7 != null) {
            c7.apply(this);
        }
        RemoteViews makeContentView = c7 != null ? c7.makeContentView(this) : null;
        Notification buildInternal = buildInternal();
        if (makeContentView != null) {
            buildInternal.contentView = makeContentView;
        } else {
            c1954b.getClass();
        }
        if (c7 != null && (makeBigContentView = c7.makeBigContentView(this)) != null) {
            buildInternal.bigContentView = makeBigContentView;
        }
        if (c7 != null && (makeHeadsUpContentView = c1954b.f21335k.makeHeadsUpContentView(this)) != null) {
            buildInternal.headsUpContentView = makeHeadsUpContentView;
        }
        if (c7 != null && (extras = D.getExtras(buildInternal)) != null) {
            c7.addCompatExtras(extras);
        }
        return buildInternal;
    }

    public Notification buildInternal() {
        int i2 = Build.VERSION.SDK_INT;
        Notification.Builder builder = this.f21348a;
        if (i2 >= 26) {
            return builder.build();
        }
        if (i2 >= 24) {
            return builder.build();
        }
        builder.setExtras(this.f21350c);
        return builder.build();
    }

    public Notification.Builder getBuilder() {
        return this.f21348a;
    }
}
