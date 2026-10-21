package f0;

import a.AbstractC0373c;
import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: F, reason: collision with root package name */
    public static final String[] f14060F;

    /* renamed from: G, reason: collision with root package name */
    public static final int[] f14061G;

    /* renamed from: H, reason: collision with root package name */
    public static final byte[] f14062H;

    /* renamed from: I, reason: collision with root package name */
    public static final d f14063I;

    /* renamed from: J, reason: collision with root package name */
    public static final d[][] f14064J;

    /* renamed from: K, reason: collision with root package name */
    public static final d[] f14065K;

    /* renamed from: L, reason: collision with root package name */
    public static final HashMap[] f14066L;

    /* renamed from: M, reason: collision with root package name */
    public static final HashMap[] f14067M;

    /* renamed from: N, reason: collision with root package name */
    public static final HashSet f14068N;

    /* renamed from: O, reason: collision with root package name */
    public static final HashMap f14069O;

    /* renamed from: P, reason: collision with root package name */
    public static final Charset f14070P;

    /* renamed from: Q, reason: collision with root package name */
    public static final byte[] f14071Q;

    /* renamed from: R, reason: collision with root package name */
    public static final byte[] f14072R;

    /* renamed from: a, reason: collision with root package name */
    public final String f14086a;

    /* renamed from: b, reason: collision with root package name */
    public final FileDescriptor f14087b;

    /* renamed from: c, reason: collision with root package name */
    public final AssetManager.AssetInputStream f14088c;

    /* renamed from: d, reason: collision with root package name */
    public int f14089d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14090e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap[] f14091f;

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f14092g;

    /* renamed from: h, reason: collision with root package name */
    public ByteOrder f14093h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14094i;

    /* renamed from: j, reason: collision with root package name */
    public int f14095j;

    /* renamed from: k, reason: collision with root package name */
    public int f14096k;

    /* renamed from: l, reason: collision with root package name */
    public int f14097l;

    /* renamed from: m, reason: collision with root package name */
    public int f14098m;

    /* renamed from: n, reason: collision with root package name */
    public static final boolean f14073n = Log.isLoggable("ExifInterface", 3);

    /* renamed from: o, reason: collision with root package name */
    public static final List f14074o = Arrays.asList(1, 6, 3, 8);

    /* renamed from: p, reason: collision with root package name */
    public static final List f14075p = Arrays.asList(2, 7, 4, 5);

    /* renamed from: q, reason: collision with root package name */
    public static final int[] f14076q = {8, 8, 8};

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f14077r = {8};

    /* renamed from: s, reason: collision with root package name */
    public static final byte[] f14078s = {-1, -40, -1};

    /* renamed from: t, reason: collision with root package name */
    public static final byte[] f14079t = {102, 116, 121, 112};

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f14080u = {109, 105, 102, 49};

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f14081v = {104, 101, 105, 99};

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f14082w = {79, 76, 89, 77, 80, 0};

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f14083x = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: y, reason: collision with root package name */
    public static final byte[] f14084y = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* renamed from: z, reason: collision with root package name */
    public static final byte[] f14085z = {101, 88, 73, 102};

    /* renamed from: A, reason: collision with root package name */
    public static final byte[] f14055A = {73, 72, 68, 82};

    /* renamed from: B, reason: collision with root package name */
    public static final byte[] f14056B = {73, 69, 78, 68};

    /* renamed from: C, reason: collision with root package name */
    public static final byte[] f14057C = {82, 73, 70, 70};

    /* renamed from: D, reason: collision with root package name */
    public static final byte[] f14058D = {87, 69, 66, 80};

    /* renamed from: E, reason: collision with root package name */
    public static final byte[] f14059E = {69, 88, 73, 70};

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        f14060F = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        f14061G = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        f14062H = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new d("Software", HttpStatus.SC_USE_PROXY, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5, 10), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new d("Software", HttpStatus.SC_USE_PROXY, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f14063I = new d("StripOffsets", 273, 3);
        f14064J = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", 258, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        f14065K = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f14066L = new HashMap[10];
        f14067M = new HashMap[10];
        f14068N = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f14069O = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        f14070P = forName;
        f14071Q = "Exif\u0000\u0000".getBytes(forName);
        f14072R = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i2 = 0;
        while (true) {
            d[][] dVarArr6 = f14064J;
            if (i2 >= dVarArr6.length) {
                HashMap hashMap = f14069O;
                d[] dVarArr7 = f14065K;
                hashMap.put(Integer.valueOf(dVarArr7[0].f14049a), 5);
                hashMap.put(Integer.valueOf(dVarArr7[1].f14049a), 1);
                hashMap.put(Integer.valueOf(dVarArr7[2].f14049a), 2);
                hashMap.put(Integer.valueOf(dVarArr7[3].f14049a), 3);
                hashMap.put(Integer.valueOf(dVarArr7[4].f14049a), 7);
                hashMap.put(Integer.valueOf(dVarArr7[5].f14049a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f14066L[i2] = new HashMap();
            f14067M[i2] = new HashMap();
            for (d dVar : dVarArr6[i2]) {
                f14066L[i2].put(Integer.valueOf(dVar.f14049a), dVar);
                f14067M[i2].put(dVar.f14050b, dVar);
            }
            i2++;
        }
    }

    public g(String str) throws IOException {
        FileInputStream fileInputStream;
        boolean z6;
        d[][] dVarArr = f14064J;
        this.f14091f = new HashMap[dVarArr.length];
        this.f14092g = new HashSet(dVarArr.length);
        this.f14093h = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            throw new NullPointerException("filename cannot be null");
        }
        FileInputStream fileInputStream2 = null;
        this.f14088c = null;
        this.f14086a = str;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                h.c(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                z6 = true;
            } catch (Exception unused) {
                if (f14073n) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
                z6 = false;
            }
            if (z6) {
                this.f14087b = fileInputStream.getFD();
            } else {
                this.f14087b = null;
            }
            o(fileInputStream);
            try {
                fileInputStream.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (RuntimeException e7) {
                    throw e7;
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }

    public static ByteOrder r(C0878b c0878b) {
        short readShort = c0878b.readShort();
        boolean z6 = f14073n;
        if (readShort == 18761) {
            if (z6) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            if (z6) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    public final void a() {
        String attribute = getAttribute("DateTimeOriginal");
        HashMap[] hashMapArr = this.f14091f;
        if (attribute != null && getAttribute("DateTime") == null) {
            hashMapArr[0].put("DateTime", c.createString(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", c.createULong(0L, this.f14093h));
        }
        if (getAttribute("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", c.createULong(0L, this.f14093h));
        }
        if (getAttribute("Orientation") == null) {
            hashMapArr[0].put("Orientation", c.createULong(0L, this.f14093h));
        }
        if (getAttribute("LightSource") == null) {
            hashMapArr[1].put("LightSource", c.createULong(0L, this.f14093h));
        }
    }

    public final c b(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (f14073n) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i2 = 0; i2 < f14064J.length; i2++) {
            c cVar = (c) this.f14091f[i2].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    public final void c(f fVar) {
        String str;
        String str2;
        String str3;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                i.a(mediaMetadataRetriever, new C0877a(fVar));
                String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(extractMetadata3)) {
                    str = mediaMetadataRetriever.extractMetadata(29);
                    str2 = mediaMetadataRetriever.extractMetadata(30);
                    str3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(extractMetadata4)) {
                    str = mediaMetadataRetriever.extractMetadata(18);
                    str2 = mediaMetadataRetriever.extractMetadata(19);
                    str3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                }
                HashMap[] hashMapArr = this.f14091f;
                if (str != null) {
                    hashMapArr[0].put("ImageWidth", c.createUShort(Integer.parseInt(str), this.f14093h));
                }
                if (str2 != null) {
                    hashMapArr[0].put("ImageLength", c.createUShort(Integer.parseInt(str2), this.f14093h));
                }
                if (str3 != null) {
                    int parseInt = Integer.parseInt(str3);
                    hashMapArr[0].put("Orientation", c.createUShort(parseInt != 90 ? parseInt != 180 ? parseInt != 270 ? 1 : 8 : 3 : 6, this.f14093h));
                }
                if (extractMetadata != null && extractMetadata2 != null) {
                    int parseInt2 = Integer.parseInt(extractMetadata);
                    int parseInt3 = Integer.parseInt(extractMetadata2);
                    if (parseInt3 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.seek(parseInt2);
                    byte[] bArr = new byte[6];
                    if (fVar.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i2 = parseInt2 + 6;
                    int i7 = parseInt3 - 6;
                    if (!Arrays.equals(bArr, f14071Q)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i7];
                    if (fVar.read(bArr2) != i7) {
                        throw new IOException("Can't read exif");
                    }
                    this.f14095j = i2;
                    s(0, bArr2);
                }
                if (f14073n) {
                    Log.d("ExifInterface", "Heif meta: " + str + "x" + str2 + ", rotation " + str3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0194, code lost:
    
        r23.setByteOrder(r22.f14093h);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0199, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0181 A[LOOP:0: B:9:0x0034->B:32:0x0181, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0188 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(f0.C0878b r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.d(f0.b, int, int):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:14|15|16|17|18|19|(16:106|(2:108|109)(1:152)|111|112|(1:114)|115|(3:118|119|(4:124|(3:129|(1:131)(2:139|(1:141))|(3:134|135|136))(2:126|127)|128|120))|117|22|23|24|25|26|(1:92)(1:30)|31|(1:33)(8:35|36|37|38|39|(1:41)(1:78)|42|(1:44)(3:45|(2:46|(2:48|(2:51|52)(1:50))(2:76|77))|(1:54)(4:55|(2:56|(2:58|(1:61)(1:60))(3:66|67|(2:68|(2:70|(1:73)(1:72))(2:74|75))))|62|(1:64)(1:65)))))|21|22|23|24|25|26|(1:28)|92|31|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x00fb, code lost:
    
        if (r6 != null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00fd, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0100, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00f9, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00f7, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0061, code lost:
    
        if (r9 < 16) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x00ce, code lost:
    
        if (r8 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0101, code lost:
    
        if (r2 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0103, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0106, code lost:
    
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00f4, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00f5, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(java.io.BufferedInputStream r18) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.e(java.io.BufferedInputStream):int");
    }

    public final void f(f fVar) {
        int i2;
        int i7;
        i(fVar);
        HashMap[] hashMapArr = this.f14091f;
        c cVar = (c) hashMapArr[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f14048d);
            fVar2.setByteOrder(this.f14093h);
            byte[] bArr = f14082w;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.seek(0L);
            byte[] bArr3 = f14083x;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.seek(12L);
            }
            t(fVar2, 6);
            c cVar2 = (c) hashMapArr[7].get("PreviewImageStart");
            c cVar3 = (c) hashMapArr[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", cVar2);
                hashMapArr[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) hashMapArr[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.a(this.f14093h);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i8 = iArr[2];
                int i9 = iArr[0];
                if (i8 <= i9 || (i2 = iArr[3]) <= (i7 = iArr[1])) {
                    return;
                }
                int i10 = (i8 - i9) + 1;
                int i11 = (i2 - i7) + 1;
                if (i10 < i11) {
                    int i12 = i10 + i11;
                    i11 = i12 - i11;
                    i10 = i12 - i11;
                }
                c createUShort = c.createUShort(i10, this.f14093h);
                c createUShort2 = c.createUShort(i11, this.f14093h);
                hashMapArr[0].put("ImageWidth", createUShort);
                hashMapArr[0].put("ImageLength", createUShort2);
            }
        }
    }

    public final void g(C0878b c0878b) {
        if (f14073n) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + c0878b);
        }
        c0878b.setByteOrder(ByteOrder.BIG_ENDIAN);
        byte[] bArr = f14084y;
        c0878b.skipFully(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int readInt = c0878b.readInt();
                byte[] bArr2 = new byte[4];
                if (c0878b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i2 = length + 8;
                if (i2 == 16 && !Arrays.equals(bArr2, f14055A)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f14056B)) {
                    return;
                }
                if (Arrays.equals(bArr2, f14085z)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c0878b.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + AbstractC0373c.a(bArr2));
                    }
                    int readInt2 = c0878b.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f14095j = i2;
                        s(0, bArr3);
                        y();
                        v(new C0878b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i7 = readInt + 4;
                c0878b.skipFully(i7);
                length = i2 + i7;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public String getAttribute(String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c b7 = b(str);
        if (b7 != null) {
            if (!f14068N.contains(str)) {
                return b7.getStringValue(this.f14093h);
            }
            if (str.equals("GPSTimeStamp")) {
                int i2 = b7.f14045a;
                if (i2 != 5 && i2 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i2);
                    return null;
                }
                e[] eVarArr = (e[]) b7.a(this.f14093h);
                if (eVarArr == null || eVarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                    return null;
                }
                e eVar = eVarArr[0];
                Integer valueOf = Integer.valueOf((int) (eVar.f14053a / eVar.f14054b));
                e eVar2 = eVarArr[1];
                Integer valueOf2 = Integer.valueOf((int) (eVar2.f14053a / eVar2.f14054b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (eVar3.f14053a / eVar3.f14054b)));
            }
            try {
                return Double.toString(b7.getDoubleValue(this.f14093h));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public int getAttributeInt(String str, int i2) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c b7 = b(str);
        if (b7 != null) {
            try {
                return b7.getIntValue(this.f14093h);
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public int getRotationDegrees() {
        switch (getAttributeInt("Orientation", 1)) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 8:
                return 270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    public final void h(C0878b c0878b) {
        boolean z6 = f14073n;
        if (z6) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + c0878b);
        }
        c0878b.skipFully(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        c0878b.read(bArr);
        c0878b.read(bArr2);
        c0878b.read(bArr3);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i7 = ByteBuffer.wrap(bArr2).getInt();
        int i8 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i7];
        c0878b.skipFully(i2 - c0878b.position());
        c0878b.read(bArr4);
        d(new C0878b(bArr4), i2, 5);
        c0878b.skipFully(i8 - c0878b.position());
        c0878b.setByteOrder(ByteOrder.BIG_ENDIAN);
        int readInt = c0878b.readInt();
        if (z6) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + readInt);
        }
        for (int i9 = 0; i9 < readInt; i9++) {
            int readUnsignedShort = c0878b.readUnsignedShort();
            int readUnsignedShort2 = c0878b.readUnsignedShort();
            if (readUnsignedShort == f14063I.f14049a) {
                short readShort = c0878b.readShort();
                short readShort2 = c0878b.readShort();
                c createUShort = c.createUShort(readShort, this.f14093h);
                c createUShort2 = c.createUShort(readShort2, this.f14093h);
                HashMap[] hashMapArr = this.f14091f;
                hashMapArr[0].put("ImageLength", createUShort);
                hashMapArr[0].put("ImageWidth", createUShort2);
                if (z6) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            c0878b.skipFully(readUnsignedShort2);
        }
    }

    public final void i(f fVar) {
        p(fVar);
        t(fVar, 0);
        x(fVar, 0);
        x(fVar, 5);
        x(fVar, 4);
        y();
        if (this.f14089d == 8) {
            HashMap[] hashMapArr = this.f14091f;
            c cVar = (c) hashMapArr[1].get("MakerNote");
            if (cVar != null) {
                f fVar2 = new f(cVar.f14048d);
                fVar2.setByteOrder(this.f14093h);
                fVar2.skipFully(6);
                t(fVar2, 9);
                c cVar2 = (c) hashMapArr[9].get("ColorSpace");
                if (cVar2 != null) {
                    hashMapArr[1].put("ColorSpace", cVar2);
                }
            }
        }
    }

    public final void j(f fVar) {
        if (f14073n) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + fVar);
        }
        i(fVar);
        HashMap[] hashMapArr = this.f14091f;
        c cVar = (c) hashMapArr[0].get("JpgFromRaw");
        if (cVar != null) {
            d(new C0878b(cVar.f14048d), (int) cVar.f14047c, 5);
        }
        c cVar2 = (c) hashMapArr[0].get("ISO");
        c cVar3 = (c) hashMapArr[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        hashMapArr[1].put("PhotographicSensitivity", cVar2);
    }

    public final void k(f fVar) {
        byte[] bArr = f14071Q;
        fVar.skipFully(bArr.length);
        byte[] bArr2 = new byte[fVar.available()];
        fVar.readFully(bArr2);
        this.f14095j = bArr.length;
        s(0, bArr2);
    }

    public final void l(C0878b c0878b) {
        if (f14073n) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + c0878b);
        }
        c0878b.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        c0878b.skipFully(f14057C.length);
        int readInt = c0878b.readInt() + 8;
        byte[] bArr = f14058D;
        c0878b.skipFully(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (c0878b.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c0878b.readInt();
                int i2 = length + 8;
                if (Arrays.equals(f14059E, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    if (c0878b.read(bArr3) == readInt2) {
                        this.f14095j = i2;
                        s(0, bArr3);
                        v(new C0878b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + AbstractC0373c.a(bArr2));
                    }
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i2 + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length > readInt) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                c0878b.skipFully(readInt2);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void m(C0878b c0878b, HashMap hashMap) {
        c cVar = (c) hashMap.get("JPEGInterchangeFormat");
        c cVar2 = (c) hashMap.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int intValue = cVar.getIntValue(this.f14093h);
        int intValue2 = cVar2.getIntValue(this.f14093h);
        if (this.f14089d == 7) {
            intValue += this.f14096k;
        }
        if (intValue > 0 && intValue2 > 0 && this.f14086a == null && this.f14088c == null && this.f14087b == null) {
            c0878b.skip(intValue);
            c0878b.read(new byte[intValue2]);
        }
        if (f14073n) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + intValue + ", length: " + intValue2);
        }
    }

    public final boolean n(HashMap hashMap) {
        c cVar = (c) hashMap.get("ImageLength");
        c cVar2 = (c) hashMap.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.getIntValue(this.f14093h) <= 512 && cVar2.getIntValue(this.f14093h) <= 512;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0096 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(java.io.InputStream r9) {
        /*
            r8 = this;
            boolean r0 = f0.g.f14073n
            r1 = 0
            r2 = r1
        L4:
            f0.d[][] r3 = f0.g.f14064J     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r3 = r3.length     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r2 >= r3) goto L1e
            java.util.HashMap[] r3 = r8.f14091f     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4.<init>()     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r3[r2] = r4     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r2 = r2 + 1
            goto L4
        L15:
            r9 = move-exception
            goto La4
        L18:
            r9 = move-exception
            goto L9a
        L1b:
            r9 = move-exception
            goto L9a
        L1e:
            boolean r2 = r8.f14090e
            if (r2 != 0) goto L30
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4 = 5000(0x1388, float:7.006E-42)
            r3.<init>(r9, r4)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r9 = r8.e(r3)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r8.f14089d = r9     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r9 = r3
        L30:
            int r3 = r8.f14089d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4 = 14
            r5 = 13
            r6 = 9
            r7 = 4
            if (r3 == r7) goto L73
            if (r3 == r6) goto L73
            if (r3 == r5) goto L73
            if (r3 != r4) goto L42
            goto L73
        L42:
            f0.f r1 = new f0.f     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r2 == 0) goto L4d
            r8.k(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L69
        L4d:
            int r9 = r8.f14089d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r2 = 12
            if (r9 != r2) goto L57
            r8.c(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L69
        L57:
            r2 = 7
            if (r9 != r2) goto L5e
            r8.f(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L69
        L5e:
            r2 = 10
            if (r9 != r2) goto L66
            r8.j(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L69
        L66:
            r8.i(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
        L69:
            int r9 = r8.f14095j     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            long r2 = (long) r9     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r1.seek(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r8.v(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L91
        L73:
            f0.b r2 = new f0.b     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r9 = r8.f14089d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r9 != r7) goto L80
            r8.d(r2, r1, r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L91
        L80:
            if (r9 != r5) goto L86
            r8.g(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L91
        L86:
            if (r9 != r6) goto L8c
            r8.h(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L91
        L8c:
            if (r9 != r4) goto L91
            r8.l(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
        L91:
            r8.a()
            if (r0 == 0) goto Lb5
            r8.q()
            return
        L9a:
            if (r0 == 0) goto Lad
            java.lang.String r1 = "ExifInterface"
            java.lang.String r2 = "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."
            android.util.Log.w(r1, r2, r9)     // Catch: java.lang.Throwable -> L15
            goto Lad
        La4:
            r8.a()
            if (r0 == 0) goto Lac
            r8.q()
        Lac:
            throw r9
        Lad:
            r8.a()
            if (r0 == 0) goto Lb5
            r8.q()
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.o(java.io.InputStream):void");
    }

    public final void p(f fVar) {
        ByteOrder r6 = r(fVar);
        this.f14093h = r6;
        fVar.setByteOrder(r6);
        int readUnsignedShort = fVar.readUnsignedShort();
        int i2 = this.f14089d;
        if (i2 != 7 && i2 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = fVar.readInt();
        if (readInt < 8) {
            throw new IOException(A.i.f(readInt, "Invalid first Ifd offset: "));
        }
        int i7 = readInt - 8;
        if (i7 > 0) {
            fVar.skipFully(i7);
        }
    }

    public final void q() {
        int i2 = 0;
        while (true) {
            HashMap[] hashMapArr = this.f14091f;
            if (i2 >= hashMapArr.length) {
                return;
            }
            StringBuilder q6 = A.i.q(i2, "The size of tag group[", "]: ");
            q6.append(hashMapArr[i2].size());
            Log.d("ExifInterface", q6.toString());
            for (Map.Entry entry : hashMapArr[i2].entrySet()) {
                c cVar = (c) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + cVar.toString() + ", tagValue: '" + cVar.getStringValue(this.f14093h) + "'");
            }
            i2++;
        }
    }

    public final void s(int i2, byte[] bArr) {
        f fVar = new f(bArr);
        p(fVar);
        t(fVar, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x026d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(f0.f r37, int r38) {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.t(f0.f, int):void");
    }

    public final void u(int i2, String str, String str2) {
        HashMap[] hashMapArr = this.f14091f;
        if (hashMapArr[i2].isEmpty() || hashMapArr[i2].get(str) == null) {
            return;
        }
        HashMap hashMap = hashMapArr[i2];
        hashMap.put(str2, hashMap.get(str));
        hashMapArr[i2].remove(str);
    }

    public final void v(C0878b c0878b) {
        c cVar;
        int intValue;
        HashMap hashMap = this.f14091f[4];
        c cVar2 = (c) hashMap.get("Compression");
        if (cVar2 == null) {
            m(c0878b, hashMap);
            return;
        }
        int intValue2 = cVar2.getIntValue(this.f14093h);
        if (intValue2 != 1) {
            if (intValue2 == 6) {
                m(c0878b, hashMap);
                return;
            } else if (intValue2 != 7) {
                return;
            }
        }
        c cVar3 = (c) hashMap.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.a(this.f14093h);
            int[] iArr2 = f14076q;
            if (Arrays.equals(iArr2, iArr) || (this.f14089d == 3 && (cVar = (c) hashMap.get("PhotometricInterpretation")) != null && (((intValue = cVar.getIntValue(this.f14093h)) == 1 && Arrays.equals(iArr, f14077r)) || (intValue == 6 && Arrays.equals(iArr, iArr2))))) {
                c cVar4 = (c) hashMap.get("StripOffsets");
                c cVar5 = (c) hashMap.get("StripByteCounts");
                if (cVar4 == null || cVar5 == null) {
                    return;
                }
                long[] b7 = AbstractC0373c.b(cVar4.a(this.f14093h));
                long[] b8 = AbstractC0373c.b(cVar5.a(this.f14093h));
                if (b7 == null || b7.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (b8 == null || b8.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (b7.length != b8.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j7 = 0;
                for (long j8 : b8) {
                    j7 += j8;
                }
                byte[] bArr = new byte[(int) j7];
                this.f14094i = true;
                int i2 = 0;
                int i7 = 0;
                for (int i8 = 0; i8 < b7.length; i8++) {
                    int i9 = (int) b7[i8];
                    int i10 = (int) b8[i8];
                    if (i8 < b7.length - 1 && i9 + i10 != b7[i8 + 1]) {
                        this.f14094i = false;
                    }
                    int i11 = i9 - i2;
                    if (i11 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    long j9 = i11;
                    if (c0878b.skip(j9) != j9) {
                        Log.d("ExifInterface", "Failed to skip " + i11 + " bytes.");
                        return;
                    }
                    int i12 = i2 + i11;
                    byte[] bArr2 = new byte[i10];
                    if (c0878b.read(bArr2) != i10) {
                        Log.d("ExifInterface", "Failed to read " + i10 + " bytes.");
                        return;
                    }
                    i2 = i12 + i10;
                    System.arraycopy(bArr2, 0, bArr, i7, i10);
                    i7 += i10;
                }
                if (this.f14094i) {
                    long j10 = b7[0];
                    return;
                }
                return;
            }
        }
        if (f14073n) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void w(int i2, int i7) {
        HashMap[] hashMapArr = this.f14091f;
        boolean isEmpty = hashMapArr[i2].isEmpty();
        boolean z6 = f14073n;
        if (isEmpty || hashMapArr[i7].isEmpty()) {
            if (z6) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = (c) hashMapArr[i2].get("ImageLength");
        c cVar2 = (c) hashMapArr[i2].get("ImageWidth");
        c cVar3 = (c) hashMapArr[i7].get("ImageLength");
        c cVar4 = (c) hashMapArr[i7].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (z6) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (z6) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int intValue = cVar.getIntValue(this.f14093h);
        int intValue2 = cVar2.getIntValue(this.f14093h);
        int intValue3 = cVar3.getIntValue(this.f14093h);
        int intValue4 = cVar4.getIntValue(this.f14093h);
        if (intValue >= intValue3 || intValue2 >= intValue4) {
            return;
        }
        HashMap hashMap = hashMapArr[i2];
        hashMapArr[i2] = hashMapArr[i7];
        hashMapArr[i7] = hashMap;
    }

    public final void x(f fVar, int i2) {
        c createUShort;
        c createUShort2;
        HashMap[] hashMapArr = this.f14091f;
        c cVar = (c) hashMapArr[i2].get("DefaultCropSize");
        c cVar2 = (c) hashMapArr[i2].get("SensorTopBorder");
        c cVar3 = (c) hashMapArr[i2].get("SensorLeftBorder");
        c cVar4 = (c) hashMapArr[i2].get("SensorBottomBorder");
        c cVar5 = (c) hashMapArr[i2].get("SensorRightBorder");
        if (cVar != null) {
            if (cVar.f14045a == 5) {
                e[] eVarArr = (e[]) cVar.a(this.f14093h);
                if (eVarArr == null || eVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                    return;
                }
                createUShort = c.createURational(eVarArr[0], this.f14093h);
                createUShort2 = c.createURational(eVarArr[1], this.f14093h);
            } else {
                int[] iArr = (int[]) cVar.a(this.f14093h);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                createUShort = c.createUShort(iArr[0], this.f14093h);
                createUShort2 = c.createUShort(iArr[1], this.f14093h);
            }
            hashMapArr[i2].put("ImageWidth", createUShort);
            hashMapArr[i2].put("ImageLength", createUShort2);
            return;
        }
        if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
            int intValue = cVar2.getIntValue(this.f14093h);
            int intValue2 = cVar4.getIntValue(this.f14093h);
            int intValue3 = cVar5.getIntValue(this.f14093h);
            int intValue4 = cVar3.getIntValue(this.f14093h);
            if (intValue2 <= intValue || intValue3 <= intValue4) {
                return;
            }
            c createUShort3 = c.createUShort(intValue2 - intValue, this.f14093h);
            c createUShort4 = c.createUShort(intValue3 - intValue4, this.f14093h);
            hashMapArr[i2].put("ImageLength", createUShort3);
            hashMapArr[i2].put("ImageWidth", createUShort4);
            return;
        }
        c cVar6 = (c) hashMapArr[i2].get("ImageLength");
        c cVar7 = (c) hashMapArr[i2].get("ImageWidth");
        if (cVar6 == null || cVar7 == null) {
            c cVar8 = (c) hashMapArr[i2].get("JPEGInterchangeFormat");
            c cVar9 = (c) hashMapArr[i2].get("JPEGInterchangeFormatLength");
            if (cVar8 == null || cVar9 == null) {
                return;
            }
            int intValue5 = cVar8.getIntValue(this.f14093h);
            int intValue6 = cVar8.getIntValue(this.f14093h);
            fVar.seek(intValue5);
            byte[] bArr = new byte[intValue6];
            fVar.read(bArr);
            d(new C0878b(bArr), intValue5, i2);
        }
    }

    public final void y() {
        w(0, 5);
        w(0, 4);
        w(5, 4);
        HashMap[] hashMapArr = this.f14091f;
        c cVar = (c) hashMapArr[1].get("PixelXDimension");
        c cVar2 = (c) hashMapArr[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            hashMapArr[0].put("ImageWidth", cVar);
            hashMapArr[0].put("ImageLength", cVar2);
        }
        if (hashMapArr[4].isEmpty() && n(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!n(hashMapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        u(0, "ThumbnailOrientation", "Orientation");
        u(0, "ThumbnailImageLength", "ImageLength");
        u(0, "ThumbnailImageWidth", "ImageWidth");
        u(5, "ThumbnailOrientation", "Orientation");
        u(5, "ThumbnailImageLength", "ImageLength");
        u(5, "ThumbnailImageWidth", "ImageWidth");
        u(4, "Orientation", "ThumbnailOrientation");
        u(4, "ImageLength", "ThumbnailImageLength");
        u(4, "ImageWidth", "ThumbnailImageWidth");
    }

    public g(InputStream inputStream) throws IOException {
        this(inputStream, 0);
    }

    public g(InputStream inputStream, int i2) throws IOException {
        d[][] dVarArr = f14064J;
        this.f14091f = new HashMap[dVarArr.length];
        this.f14092g = new HashSet(dVarArr.length);
        this.f14093h = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.f14086a = null;
            if (i2 == 1) {
                byte[] bArr = f14071Q;
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, bArr.length);
                bufferedInputStream.mark(bArr.length);
                byte[] bArr2 = new byte[bArr.length];
                bufferedInputStream.read(bArr2);
                bufferedInputStream.reset();
                for (int i7 = 0; i7 < bArr.length; i7++) {
                    if (bArr2[i7] != bArr[i7]) {
                        Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
                        return;
                    }
                }
                this.f14090e = true;
                this.f14088c = null;
                this.f14087b = null;
                inputStream = bufferedInputStream;
            } else if (inputStream instanceof AssetManager.AssetInputStream) {
                this.f14088c = (AssetManager.AssetInputStream) inputStream;
                this.f14087b = null;
            } else {
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    try {
                        h.c(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                        this.f14088c = null;
                        this.f14087b = fileInputStream.getFD();
                    } catch (Exception unused) {
                        if (f14073n) {
                            Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                        }
                    }
                }
                this.f14088c = null;
                this.f14087b = null;
            }
            o(inputStream);
            return;
        }
        throw new NullPointerException("inputStream cannot be null");
    }
}
