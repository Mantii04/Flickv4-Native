package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import androidx.media3.common.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f5998j = new Object();

    /* renamed from: k, reason: collision with root package name */
    public static volatile p f5999k;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f6000a;

    /* renamed from: b, reason: collision with root package name */
    public final p.i f6001b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f6002c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f6003d;

    /* renamed from: e, reason: collision with root package name */
    public final j f6004e;

    /* renamed from: f, reason: collision with root package name */
    public final n f6005f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6006g;

    /* renamed from: h, reason: collision with root package name */
    public final int f6007h;

    /* renamed from: i, reason: collision with root package name */
    public final C0449h f6008i;

    public p(k kVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f6000a = reentrantReadWriteLock;
        this.f6002c = 3;
        kVar.getClass();
        this.f6006g = -16711936;
        n nVar = kVar.f5992a;
        this.f6005f = nVar;
        int i2 = kVar.f5993b;
        this.f6007h = i2;
        this.f6008i = kVar.f5994c;
        this.f6003d = new Handler(Looper.getMainLooper());
        this.f6001b = new p.i();
        j jVar = new j(this);
        this.f6004e = jVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i2 == 0) {
            try {
                this.f6002c = 0;
            } catch (Throwable th) {
                this.f6000a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (getLoadState() == 0) {
            try {
                nVar.load(new i(jVar));
            } catch (Throwable th2) {
                a(th2);
            }
        }
    }

    public static p get() {
        p pVar;
        synchronized (f5998j) {
            pVar = f5999k;
            L.h.checkState(pVar != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return pVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0049, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0086, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0079, code lost:
    
        if (r11 != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a6, code lost:
    
        if (r10 != (-1)) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean handleDeleteSurroundingText(android.view.inputmethod.InputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.p.handleDeleteSurroundingText(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
    }

    public static boolean handleOnKeyDown(Editable editable, int i2, KeyEvent keyEvent) {
        if (!(i2 != 67 ? i2 != 112 ? false : C.k.a(editable, keyEvent, true) : C.k.a(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    public static p init(k kVar) {
        p pVar;
        p pVar2 = f5999k;
        if (pVar2 != null) {
            return pVar2;
        }
        synchronized (f5998j) {
            try {
                pVar = f5999k;
                if (pVar == null) {
                    pVar = new p(kVar);
                    f5999k = pVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVar;
    }

    public static boolean isConfigured() {
        return f5999k != null;
    }

    public final void a(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f6000a.writeLock().lock();
        try {
            this.f6002c = 2;
            arrayList.addAll(this.f6001b);
            this.f6001b.clear();
            this.f6000a.writeLock().unlock();
            this.f6003d.post(new m(arrayList, this.f6002c, th));
        } catch (Throwable th2) {
            this.f6000a.writeLock().unlock();
            throw th2;
        }
    }

    public int getEmojiSpanIndicatorColor() {
        return this.f6006g;
    }

    public int getLoadState() {
        this.f6000a.readLock().lock();
        try {
            return this.f6002c;
        } finally {
            this.f6000a.readLock().unlock();
        }
    }

    public boolean isEmojiSpanIndicatorEnabled() {
        return false;
    }

    public void load() {
        L.h.checkState(this.f6007h == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (getLoadState() == 1) {
            return;
        }
        this.f6000a.writeLock().lock();
        try {
            if (this.f6002c == 0) {
                return;
            }
            this.f6002c = 0;
            this.f6000a.writeLock().unlock();
            j jVar = this.f6004e;
            p pVar = jVar.f5989a;
            try {
                pVar.f6005f.load(new i(jVar));
            } catch (Throwable th) {
                pVar.a(th);
            }
        } finally {
            this.f6000a.writeLock().unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x019e, code lost:
    
        if (r10 != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01a0, code lost:
    
        ((androidx.emoji2.text.E) r17).endBatchEdit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01a6, code lost:
    
        return r17;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x017f A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:127:0x007b, B:130:0x0080, B:132:0x0084, B:134:0x0091, B:31:0x00a4, B:33:0x00ac, B:35:0x00af, B:37:0x00b3, B:39:0x00bf, B:41:0x00c2, B:45:0x00d0, B:51:0x00df, B:52:0x00ee, B:57:0x0106, B:82:0x0115, B:86:0x0121, B:87:0x012b, B:69:0x013c, B:72:0x0143, B:60:0x0148, B:62:0x0153, B:93:0x015a, B:95:0x015e, B:97:0x0164, B:99:0x0169, B:103:0x0173, B:106:0x017f, B:107:0x0184, B:109:0x0194, B:29:0x009a), top: B:126:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0194 A[Catch: all -> 0x0097, TRY_LEAVE, TryCatch #0 {all -> 0x0097, blocks: (B:127:0x007b, B:130:0x0080, B:132:0x0084, B:134:0x0091, B:31:0x00a4, B:33:0x00ac, B:35:0x00af, B:37:0x00b3, B:39:0x00bf, B:41:0x00c2, B:45:0x00d0, B:51:0x00df, B:52:0x00ee, B:57:0x0106, B:82:0x0115, B:86:0x0121, B:87:0x012b, B:69:0x013c, B:72:0x0143, B:60:0x0148, B:62:0x0153, B:93:0x015a, B:95:0x015e, B:97:0x0164, B:99:0x0169, B:103:0x0173, B:106:0x017f, B:107:0x0184, B:109:0x0194, B:29:0x009a), top: B:126:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3 A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:127:0x007b, B:130:0x0080, B:132:0x0084, B:134:0x0091, B:31:0x00a4, B:33:0x00ac, B:35:0x00af, B:37:0x00b3, B:39:0x00bf, B:41:0x00c2, B:45:0x00d0, B:51:0x00df, B:52:0x00ee, B:57:0x0106, B:82:0x0115, B:86:0x0121, B:87:0x012b, B:69:0x013c, B:72:0x0143, B:60:0x0148, B:62:0x0153, B:93:0x015a, B:95:0x015e, B:97:0x0164, B:99:0x0169, B:103:0x0173, B:106:0x017f, B:107:0x0184, B:109:0x0194, B:29:0x009a), top: B:126:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence process(java.lang.CharSequence r17, int r18, int r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.p.process(java.lang.CharSequence, int, int, int, int):java.lang.CharSequence");
    }

    public void registerInitCallback(l lVar) {
        L.h.checkNotNull(lVar, "initCallback cannot be null");
        this.f6000a.writeLock().lock();
        try {
            if (this.f6002c != 1 && this.f6002c != 2) {
                this.f6001b.add(lVar);
                this.f6000a.writeLock().unlock();
            }
            this.f6003d.post(new m(Arrays.asList((l) L.h.checkNotNull(lVar, "initCallback cannot be null")), this.f6002c, null));
            this.f6000a.writeLock().unlock();
        } catch (Throwable th) {
            this.f6000a.writeLock().unlock();
            throw th;
        }
    }

    public void unregisterInitCallback(l lVar) {
        L.h.checkNotNull(lVar, "initCallback cannot be null");
        ReentrantReadWriteLock reentrantReadWriteLock = this.f6000a;
        reentrantReadWriteLock.writeLock().lock();
        try {
            this.f6001b.remove(lVar);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public void updateEditorInfo(EditorInfo editorInfo) {
        if (getLoadState() != 1 || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        j jVar = this.f6004e;
        jVar.getClass();
        editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", jVar.f5991c.f5972a.version());
        Bundle bundle = editorInfo.extras;
        jVar.f5989a.getClass();
        bundle.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    public CharSequence process(CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence process(CharSequence charSequence, int i2, int i7) {
        return process(charSequence, i2, i7, Log.LOG_LEVEL_OFF);
    }

    public CharSequence process(CharSequence charSequence, int i2, int i7, int i8) {
        return process(charSequence, i2, i7, i8, 0);
    }
}
