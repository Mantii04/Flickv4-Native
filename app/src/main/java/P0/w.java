package P0;

import Q3.x0;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.google.firebase.sessions.settings.RemoteSettings;
import s0.AbstractC1610f;
import s0.C1606b;
import v0.U;

/* loaded from: classes.dex */
public abstract class w {
    public static J0.e a(int i2, ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString(readInt - 16);
            return new J0.e(androidx.media3.common.C.LANGUAGE_UNDETERMINED, readNullTerminatedString, readNullTerminatedString);
        }
        Log.w("MetadataUtil", "Failed to parse comment attribute: " + AbstractC1610f.getBoxTypeString(i2));
        return null;
    }

    public static J0.a b(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() != 1684108385) {
            Log.w("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int parseFullBoxFlags = AbstractC0225n.parseFullBoxFlags(parsableByteArray.readInt());
        String str = parseFullBoxFlags == 13 ? MimeTypes.IMAGE_JPEG : parseFullBoxFlags == 14 ? MimeTypes.IMAGE_PNG : null;
        if (str == null) {
            A.i.v(parseFullBoxFlags, "Unrecognized cover art flags: ", "MetadataUtil");
            return null;
        }
        parsableByteArray.skipBytes(4);
        int i2 = readInt - 16;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new J0.a(str, null, 3, bArr);
    }

    public static J0.p c(ParsableByteArray parsableByteArray, int i2, String str) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385 && readInt >= 22) {
            parsableByteArray.skipBytes(10);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            if (readUnsignedShort > 0) {
                String f3 = A.i.f(readUnsignedShort, "");
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                if (readUnsignedShort2 > 0) {
                    f3 = f3 + RemoteSettings.FORWARD_SLASH_STRING + readUnsignedShort2;
                }
                return new J0.p(str, null, ImmutableList.of(f3));
            }
        }
        Log.w("MetadataUtil", "Failed to parse index/count attribute: " + AbstractC1610f.getBoxTypeString(i2));
        return null;
    }

    public static int d(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            int i2 = readInt - 16;
            if (i2 == 1) {
                return parsableByteArray.readUnsignedByte();
            }
            if (i2 == 2) {
                return parsableByteArray.readUnsignedShort();
            }
            if (i2 == 3) {
                return parsableByteArray.readUnsignedInt24();
            }
            if (i2 == 4 && (parsableByteArray.peekUnsignedByte() & 128) == 0) {
                return parsableByteArray.readUnsignedIntToInt();
            }
        }
        Log.w("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static J0.k e(int i2, String str, ParsableByteArray parsableByteArray, boolean z6, boolean z7) {
        int d7 = d(parsableByteArray);
        if (z7) {
            d7 = Math.min(1, d7);
        }
        if (d7 >= 0) {
            return z6 ? new J0.p(str, null, ImmutableList.of(Integer.toString(d7))) : new J0.e(androidx.media3.common.C.LANGUAGE_UNDETERMINED, str, Integer.toString(d7));
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute: " + AbstractC1610f.getBoxTypeString(i2));
        return null;
    }

    public static J0.p f(ParsableByteArray parsableByteArray, int i2, String str) {
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return new J0.p(str, null, ImmutableList.of(parsableByteArray.readNullTerminatedString(readInt - 16)));
        }
        Log.w("MetadataUtil", "Failed to parse text attribute: " + AbstractC1610f.getBoxTypeString(i2));
        return null;
    }

    public static Metadata.Entry parseIlstElement(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt() + parsableByteArray.getPosition();
        int readInt2 = parsableByteArray.readInt();
        int i2 = (readInt2 >> 24) & 255;
        J0.k kVar = null;
        try {
            if (i2 == 169 || i2 == 253) {
                int i7 = 16777215 & readInt2;
                if (i7 == 6516084) {
                    return a(readInt2, parsableByteArray);
                }
                if (i7 == 7233901 || i7 == 7631467) {
                    return f(parsableByteArray, readInt2, "TIT2");
                }
                if (i7 == 6516589 || i7 == 7828084) {
                    return f(parsableByteArray, readInt2, "TCOM");
                }
                if (i7 == 6578553) {
                    return f(parsableByteArray, readInt2, "TDRC");
                }
                if (i7 == 4280916) {
                    return f(parsableByteArray, readInt2, "TPE1");
                }
                if (i7 == 7630703) {
                    return f(parsableByteArray, readInt2, "TSSE");
                }
                if (i7 == 6384738) {
                    return f(parsableByteArray, readInt2, "TALB");
                }
                if (i7 == 7108978) {
                    return f(parsableByteArray, readInt2, "USLT");
                }
                if (i7 == 6776174) {
                    return f(parsableByteArray, readInt2, "TCON");
                }
                if (i7 == 6779504) {
                    return f(parsableByteArray, readInt2, "TIT1");
                }
                if (i7 == 7173742) {
                    return f(parsableByteArray, readInt2, "MVNM");
                }
                if (i7 == 7173737) {
                    return e(readInt2, "MVIN", parsableByteArray, true, false);
                }
            } else {
                if (readInt2 == 1735291493) {
                    String resolveV1Genre = J0.l.resolveV1Genre(d(parsableByteArray) - 1);
                    if (resolveV1Genre != null) {
                        kVar = new J0.p("TCON", null, ImmutableList.of(resolveV1Genre));
                    } else {
                        Log.w("MetadataUtil", "Failed to parse standard genre code");
                    }
                    return kVar;
                }
                if (readInt2 == 1684632427) {
                    return c(parsableByteArray, readInt2, "TPOS");
                }
                if (readInt2 == 1953655662) {
                    return c(parsableByteArray, readInt2, "TRCK");
                }
                if (readInt2 == 1953329263) {
                    return e(readInt2, "TBPM", parsableByteArray, true, false);
                }
                if (readInt2 == 1668311404) {
                    return e(readInt2, "TCMP", parsableByteArray, true, true);
                }
                if (readInt2 == 1668249202) {
                    return b(parsableByteArray);
                }
                if (readInt2 == 1631670868) {
                    return f(parsableByteArray, readInt2, "TPE2");
                }
                if (readInt2 == 1936682605) {
                    return f(parsableByteArray, readInt2, "TSOT");
                }
                if (readInt2 == 1936679276) {
                    return f(parsableByteArray, readInt2, "TSOA");
                }
                if (readInt2 == 1936679282) {
                    return f(parsableByteArray, readInt2, "TSOP");
                }
                if (readInt2 == 1936679265) {
                    return f(parsableByteArray, readInt2, "TSO2");
                }
                if (readInt2 == 1936679791) {
                    return f(parsableByteArray, readInt2, "TSOC");
                }
                if (readInt2 == 1920233063) {
                    return e(readInt2, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (readInt2 == 1885823344) {
                    return e(readInt2, "ITUNESGAPLESS", parsableByteArray, false, true);
                }
                if (readInt2 == 1936683886) {
                    return f(parsableByteArray, readInt2, "TVSHOWSORT");
                }
                if (readInt2 == 1953919848) {
                    return f(parsableByteArray, readInt2, "TVSHOW");
                }
                if (readInt2 == 757935405) {
                    int i8 = -1;
                    int i9 = -1;
                    String str = null;
                    String str2 = null;
                    while (parsableByteArray.getPosition() < readInt) {
                        int position = parsableByteArray.getPosition();
                        int readInt3 = parsableByteArray.readInt();
                        int readInt4 = parsableByteArray.readInt();
                        parsableByteArray.skipBytes(4);
                        if (readInt4 == 1835360622) {
                            str = parsableByteArray.readNullTerminatedString(readInt3 - 12);
                        } else if (readInt4 == 1851878757) {
                            str2 = parsableByteArray.readNullTerminatedString(readInt3 - 12);
                        } else {
                            if (readInt4 == 1684108385) {
                                i8 = position;
                                i9 = readInt3;
                            }
                            parsableByteArray.skipBytes(readInt3 - 12);
                        }
                    }
                    if (str != null && str2 != null && i8 != -1) {
                        parsableByteArray.setPosition(i8);
                        parsableByteArray.skipBytes(16);
                        kVar = new J0.m(str, str2, parsableByteArray.readNullTerminatedString(i9 - 16));
                    }
                    return kVar;
                }
            }
            Log.d("MetadataUtil", "Skipped unknown metadata entry: " + AbstractC1610f.getBoxTypeString(readInt2));
            return null;
        } finally {
            parsableByteArray.setPosition(readInt);
        }
    }

    public static C1606b parseMdtaMetadataEntryFromIlst(ParsableByteArray parsableByteArray, int i2, String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i2) {
                return null;
            }
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1684108385) {
                int readInt2 = parsableByteArray.readInt();
                int readInt3 = parsableByteArray.readInt();
                int i7 = readInt - 16;
                byte[] bArr = new byte[i7];
                parsableByteArray.readBytes(bArr, 0, i7);
                return new C1606b(str, bArr, readInt3, readInt2);
            }
            parsableByteArray.setPosition(position + readInt);
        }
    }

    public static void setFormatGaplessInfo(int i2, U u6, Format.Builder builder) {
        if (i2 == 1 && u6.hasGaplessInfo()) {
            builder.setEncoderDelay(u6.f20393a).setEncoderPadding(u6.f20394b);
        }
    }

    public static void setFormatMetadata(int i2, Metadata metadata, Format.Builder builder, Metadata metadata2, Metadata... metadataArr) {
        if (metadata2 == null) {
            metadata2 = new Metadata(new Metadata.Entry[0]);
        }
        if (metadata != null) {
            x0 it = metadata.getEntriesOfType(C1606b.class).iterator();
            while (it.hasNext()) {
                C1606b c1606b = (C1606b) it.next();
                if (!c1606b.f19904a.equals("com.android.capture.fps") || i2 == 2) {
                    metadata2 = metadata2.copyWithAppendedEntries(c1606b);
                }
            }
        }
        for (Metadata metadata3 : metadataArr) {
            metadata2 = metadata2.copyWithAppendedEntriesFrom(metadata3);
        }
        if (metadata2.length() > 0) {
            builder.setMetadata(metadata2);
        }
    }
}
