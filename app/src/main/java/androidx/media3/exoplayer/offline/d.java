package androidx.media3.exoplayer.offline;

import android.os.Handler;
import android.os.Message;
import androidx.media3.exoplayer.offline.DownloadHelper;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7451b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7452e;

    public /* synthetic */ d(Object obj, int i2) {
        this.f7451b = i2;
        this.f7452e = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleDownloadHelperCallbackMessage;
        boolean handleMainMessage;
        switch (this.f7451b) {
            case 0:
                handleDownloadHelperCallbackMessage = ((DownloadHelper.MediaPreparer) this.f7452e).handleDownloadHelperCallbackMessage(message);
                return handleDownloadHelperCallbackMessage;
            default:
                handleMainMessage = ((DownloadManager) this.f7452e).handleMainMessage(message);
                return handleMainMessage;
        }
    }
}
