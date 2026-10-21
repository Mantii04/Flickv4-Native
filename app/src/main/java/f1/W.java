package f1;

import M.l1;
import android.media.MediaRoute2Info;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class W {
    public static ArrayList a(List list) {
        String id;
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info c7 = l1.c(it.next());
            if (c7 != null) {
                id = c7.getId();
                arrayList.add(id);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static f1.C0915v toMediaRouteDescriptor(android.media.MediaRoute2Info r8) {
        /*
            if (r8 != 0) goto L4
            goto Ld6
        L4:
            f1.u r0 = new f1.u
            java.lang.String r1 = androidx.media3.exoplayer.source.mediaparser.b.k(r8)
            java.lang.CharSequence r2 = f1.AbstractC0907m.h(r8)
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            int r1 = f1.AbstractC0907m.b(r8)
            f1.u r0 = r0.setConnectionState(r1)
            int r1 = f1.AbstractC0907m.o(r8)
            f1.u r0 = r0.setVolumeHandling(r1)
            int r1 = f1.AbstractC0907m.r(r8)
            f1.u r0 = r0.setVolumeMax(r1)
            int r1 = f1.AbstractC0907m.s(r8)
            f1.u r0 = r0.setVolume(r1)
            android.os.Bundle r1 = androidx.media3.exoplayer.source.mediaparser.b.g(r8)
            f1.u r0 = r0.setExtras(r1)
            r1 = 1
            f1.u r0 = r0.setEnabled(r1)
            r2 = 0
            f1.u r0 = r0.setCanDisconnect(r2)
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 34
            if (r3 < r4) goto L78
            java.util.Set r3 = f1.V.getDeduplicationIds(r8)
            r0.setDeduplicationIds(r3)
            int r3 = f1.V.getType(r8)
            r4 = 2000(0x7d0, float:2.803E-42)
            if (r3 == r4) goto L75
            switch(r3) {
                case 1001: goto L73;
                case 1002: goto L71;
                case 1003: goto L6f;
                case 1004: goto L6d;
                case 1005: goto L6b;
                case 1006: goto L69;
                case 1007: goto L66;
                case 1008: goto L63;
                case 1009: goto L60;
                default: goto L5f;
            }
        L5f:
            goto L78
        L60:
            r3 = 10
            goto L79
        L63:
            r3 = 9
            goto L79
        L66:
            r3 = 8
            goto L79
        L69:
            r3 = 7
            goto L79
        L6b:
            r3 = 6
            goto L79
        L6d:
            r3 = 5
            goto L79
        L6f:
            r3 = 4
            goto L79
        L71:
            r3 = 2
            goto L79
        L73:
            r3 = r1
            goto L79
        L75:
            r3 = 1000(0x3e8, float:1.401E-42)
            goto L79
        L78:
            r3 = r2
        L79:
            java.lang.CharSequence r4 = f1.AbstractC0907m.p(r8)
            if (r4 == 0) goto L86
            java.lang.String r4 = r4.toString()
            r0.setDescription(r4)
        L86:
            android.net.Uri r4 = f1.AbstractC0907m.f(r8)
            if (r4 == 0) goto L8f
            r0.setIconUri(r4)
        L8f:
            android.os.Bundle r8 = androidx.media3.exoplayer.source.mediaparser.b.g(r8)
            if (r8 == 0) goto Ld6
            java.lang.String r4 = "androidx.mediarouter.media.KEY_EXTRAS"
            boolean r5 = r8.containsKey(r4)
            if (r5 == 0) goto Ld6
            java.lang.String r5 = "androidx.mediarouter.media.KEY_DEVICE_TYPE"
            boolean r6 = r8.containsKey(r5)
            if (r6 == 0) goto Ld6
            java.lang.String r6 = "androidx.mediarouter.media.KEY_CONTROL_FILTERS"
            boolean r7 = r8.containsKey(r6)
            if (r7 != 0) goto Lae
            goto Ld6
        Lae:
            android.os.Bundle r4 = r8.getBundle(r4)
            r0.setExtras(r4)
            if (r3 == 0) goto Lb8
            goto Lbc
        Lb8:
            int r3 = r8.getInt(r5, r2)
        Lbc:
            r0.setDeviceType(r3)
            java.lang.String r2 = "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"
            int r1 = r8.getInt(r2, r1)
            r0.setPlaybackType(r1)
            java.util.ArrayList r8 = r8.getParcelableArrayList(r6)
            if (r8 == 0) goto Ld1
            r0.addControlFilters(r8)
        Ld1:
            f1.v r8 = r0.build()
            return r8
        Ld6:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: f1.W.toMediaRouteDescriptor(android.media.MediaRoute2Info):f1.v");
    }
}
