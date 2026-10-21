package q5;

import android.content.Context;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import s5.AbstractC1642a;
import s5.AbstractC1643b;

/* renamed from: q5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1527a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19654a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19655b = false;

    public C1527a(Context context) {
        this.f19654a = context;
    }

    public void setEnableLogging(boolean z6) {
        this.f19655b = z6;
    }

    public File writeToFile(String str) {
        Context context = this.f19654a;
        File file = new File(context.getFilesDir(), "hopmnproxy.cfg");
        try {
            if (file.exists() && !file.delete()) {
                AbstractC1643b.w("ConfigManager", "hopmnproxy config file cannot deleted", new Object[0]);
                return file;
            }
            if (!file.createNewFile()) {
                AbstractC1643b.w("ConfigManager", "opmnproxy config file creation failed", new Object[0]);
                return file;
            }
            String replaceAll = str.replace("config:", "proxy ").replaceFirst(",$", "").replaceAll(",", ":");
            AbstractC1643b.d("ConfigManager", "Write new directive '%s' to hopmnproxy configuration file", replaceAll);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream));
            if (this.f19655b) {
                File file2 = new File(context.getFilesDir(), "log");
                AbstractC1643b.d("ConfigManager", "Enable logging to file %s", file2);
                bufferedWriter.append((CharSequence) ("log " + file2.getAbsolutePath() + " D"));
                bufferedWriter.newLine();
            }
            bufferedWriter.append((CharSequence) replaceAll);
            bufferedWriter.flush();
            bufferedWriter.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            AbstractC1643b.d("ConfigManager", "hopmnproxy config file wrote %s", "hopmnproxy.cfg");
            AbstractC1643b.d("ConfigManager", "Config:\n%s\n=========", AbstractC1642a.toString(file));
            return file;
        } catch (IOException e3) {
            AbstractC1643b.e("ConfigManager", "File write failed: ", e3, new Object[0]);
            return file;
        }
    }
}
