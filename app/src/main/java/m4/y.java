package m4;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.squareup.picasso.Picasso$LoadedFrom;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class y extends Handler {
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 3) {
            C1339s c1339s = (C1339s) message.obj;
            c1339s.f18703a.a(c1339s.a());
            return;
        }
        if (i2 != 8) {
            if (i2 != 13) {
                throw new AssertionError("Unknown handler message received: " + message.what);
            }
            List list = (List) message.obj;
            int size = list.size();
            for (int i7 = 0; i7 < size; i7++) {
                C1339s c1339s2 = (C1339s) list.get(i7);
                D d7 = c1339s2.f18703a;
                Bitmap bitmap = d7.f18598e.get(c1339s2.f18707e);
                P p6 = d7.f18599f;
                if (bitmap != null) {
                    p6.f18644b.sendEmptyMessage(0);
                } else {
                    p6.f18644b.sendEmptyMessage(1);
                }
                if (bitmap != null) {
                    d7.b(bitmap, Picasso$LoadedFrom.MEMORY, c1339s2, null);
                } else {
                    d7.c(c1339s2);
                }
            }
            return;
        }
        List list2 = (List) message.obj;
        int size2 = list2.size();
        for (int i8 = 0; i8 < size2; i8++) {
            com.squareup.picasso.a aVar = (com.squareup.picasso.a) list2.get(i8);
            D d8 = aVar.f13421e;
            d8.getClass();
            C1339s c1339s3 = aVar.f13429s;
            ArrayList arrayList = aVar.f13430t;
            boolean z6 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            if (c1339s3 != null || z6) {
                Uri uri = aVar.f13426p.f18620a;
                Exception exc = aVar.f13434x;
                Bitmap bitmap2 = aVar.f13431u;
                Picasso$LoadedFrom picasso$LoadedFrom = aVar.f13433w;
                if (c1339s3 != null) {
                    d8.b(bitmap2, picasso$LoadedFrom, c1339s3, exc);
                }
                if (z6) {
                    int size3 = arrayList.size();
                    for (int i9 = 0; i9 < size3; i9++) {
                        d8.b(bitmap2, picasso$LoadedFrom, (C1339s) arrayList.get(i9), exc);
                    }
                }
            }
        }
    }
}
