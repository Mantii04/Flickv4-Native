package s5;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.commons.lang3.StringUtils;

/* renamed from: s5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1642a {
    public static String toString(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        String abstractC1642a = toString(fileInputStream);
        fileInputStream.close();
        return abstractC1642a;
    }

    public static String toString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(readLine);
            sb.append(StringUtils.LF);
        }
    }
}
