package androidx.emoji2.text;

/* loaded from: classes.dex */
public final class t implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            I.s.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (p.isConfigured()) {
                p.get().load();
            }
        } finally {
            I.s.endSection();
        }
    }
}
