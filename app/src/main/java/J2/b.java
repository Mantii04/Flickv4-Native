package J2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.getkeepsafe.relinker.MissingLibraryException;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class b implements c {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static a b(Context context, String[] strArr, String str, i iVar) {
        int i2;
        int i7 = 1;
        String[] d7 = d(context);
        int length = d7.length;
        int i8 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i8 >= length) {
                return null;
            }
            String str2 = d7[i8];
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                if (i9 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), i7);
                    break;
                } catch (IOException unused) {
                    i9 = i10;
                }
            }
            if (zipFile == null) {
                i2 = i7;
            } else {
                int i11 = 0;
                while (true) {
                    int i12 = i11 + 1;
                    if (i11 < 5) {
                        int length2 = strArr.length;
                        int i13 = 0;
                        while (i13 < length2) {
                            String str3 = strArr[i13];
                            StringBuilder sb = new StringBuilder("lib");
                            char c7 = File.separatorChar;
                            sb.append(c7);
                            sb.append(str3);
                            sb.append(c7);
                            sb.append(str);
                            String sb2 = sb.toString();
                            Object[] objArr = new Object[2];
                            objArr[0] = sb2;
                            objArr[i7] = str2;
                            int i14 = i7;
                            iVar.log("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(sb2);
                            if (entry != null) {
                                return new a(zipFile, entry);
                            }
                            i13++;
                            i7 = i14;
                        }
                        i11 = i12;
                        i7 = i7;
                    } else {
                        i2 = i7;
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i8++;
            i7 = i2;
        }
    }

    public static String[] c(Context context, String str) {
        StringBuilder sb = new StringBuilder("lib");
        char c7 = File.separatorChar;
        sb.append(c7);
        sb.append("([^\\");
        sb.append(c7);
        sb.append("]*)");
        sb.append(c7);
        sb.append(str);
        Pattern compile = Pattern.compile(sb.toString());
        HashSet hashSet = new HashSet();
        for (String str2 : d(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(entries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public static String[] d(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    @SuppressLint({"SetWorldReadable"})
    public void installLibrary(Context context, String[] strArr, String str, File file, i iVar) {
        a b7;
        String[] strArr2;
        ZipFile zipFile;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        long j7;
        a aVar = null;
        InputStream inputStream2 = null;
        try {
            b7 = b(context, strArr, str, iVar);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (b7 == null) {
                try {
                    strArr2 = c(context, str);
                } catch (Exception e3) {
                    strArr2 = new String[]{e3.toString()};
                }
                throw new MissingLibraryException(str, strArr, strArr2);
            }
            int i2 = 0;
            while (true) {
                int i7 = i2 + 1;
                zipFile = b7.f1500a;
                if (i2 < 5) {
                    iVar.log("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = zipFile.getInputStream(b7.f1501b);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (FileNotFoundException unused) {
                                    fileOutputStream = null;
                                } catch (IOException unused2) {
                                    fileOutputStream = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = null;
                                }
                            } catch (FileNotFoundException unused3) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException unused4) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream = null;
                            }
                            try {
                                byte[] bArr = new byte[4096];
                                j7 = 0;
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                    j7 += read;
                                }
                                fileOutputStream.flush();
                                fileOutputStream.getFD().sync();
                            } catch (FileNotFoundException unused5) {
                                a(inputStream);
                                a(fileOutputStream);
                                i2 = i7;
                            } catch (IOException unused6) {
                                a(inputStream);
                                a(fileOutputStream);
                                i2 = i7;
                            } catch (Throwable th4) {
                                th = th4;
                                inputStream2 = inputStream;
                                a(inputStream2);
                                a(fileOutputStream);
                                throw th;
                            }
                            if (j7 == file.length()) {
                                a(inputStream);
                                a(fileOutputStream);
                                file.setReadable(true, false);
                                file.setExecutable(true, false);
                                file.setWritable(true);
                                break;
                            }
                            a(inputStream);
                            a(fileOutputStream);
                        }
                    } catch (IOException unused7) {
                    }
                    i2 = i7;
                } else {
                    iVar.log("FATAL! Couldn't extract the library from the APK!");
                    if (zipFile == null) {
                        return;
                    }
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused8) {
            }
        } catch (Throwable th5) {
            th = th5;
            aVar = b7;
            if (aVar != null) {
                try {
                    ZipFile zipFile2 = aVar.f1500a;
                    if (zipFile2 != null) {
                        zipFile2.close();
                    }
                } catch (IOException unused9) {
                }
            }
            throw th;
        }
    }
}
