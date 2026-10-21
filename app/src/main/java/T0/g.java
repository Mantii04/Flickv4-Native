package T0;

import P3.v;
import S0.m;
import S0.n;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.extractor.text.SubtitleDecoderException;
import cz.msebera.android.httpclient.message.TokenParser;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
public final class g extends j {

    /* renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f3504h = new ParsableByteArray();

    /* renamed from: i, reason: collision with root package name */
    public final ParsableBitArray f3505i = new ParsableBitArray();

    /* renamed from: j, reason: collision with root package name */
    public int f3506j = -1;

    /* renamed from: k, reason: collision with root package name */
    public final int f3507k;

    /* renamed from: l, reason: collision with root package name */
    public final e[] f3508l;

    /* renamed from: m, reason: collision with root package name */
    public e f3509m;

    /* renamed from: n, reason: collision with root package name */
    public List f3510n;

    /* renamed from: o, reason: collision with root package name */
    public List f3511o;

    /* renamed from: p, reason: collision with root package name */
    public f f3512p;

    /* renamed from: q, reason: collision with root package name */
    public int f3513q;

    public g(int i2, List<byte[]> list) {
        this.f3507k = i2 == -1 ? 1 : i2;
        if (list != null) {
            CodecSpecificDataUtil.parseCea708InitializationData(list);
        }
        this.f3508l = new e[8];
        for (int i7 = 0; i7 < 8; i7++) {
            this.f3508l[i7] = new e();
        }
        this.f3509m = this.f3508l[0];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v107 */
    /* JADX WARN: Type inference failed for: r1v108 */
    /* JADX WARN: Type inference failed for: r1v109 */
    /* JADX WARN: Type inference failed for: r1v110 */
    /* JADX WARN: Type inference failed for: r1v111 */
    /* JADX WARN: Type inference failed for: r1v60 */
    /* JADX WARN: Type inference failed for: r1v61, types: [int] */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v64, types: [int] */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r1v67, types: [int] */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r1v70, types: [int] */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r1v73, types: [int] */
    public final void a() {
        char c7;
        boolean z6;
        boolean z7;
        boolean z8;
        f fVar = this.f3512p;
        if (fVar == null) {
            return;
        }
        boolean z9 = true;
        if (fVar.f3503d != (fVar.f3501b * 2) - 1) {
            Log.d("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f3512p.f3501b * 2) - 1) + ", but current index is " + this.f3512p.f3503d + " (sequence number " + this.f3512p.f3500a + ");");
        }
        f fVar2 = this.f3512p;
        byte[] bArr = fVar2.f3502c;
        int i2 = fVar2.f3503d;
        ParsableBitArray parsableBitArray = this.f3505i;
        parsableBitArray.reset(bArr, i2);
        boolean z10 = false;
        while (true) {
            if (parsableBitArray.bitsLeft() > 0) {
                int readBits = parsableBitArray.readBits(3);
                int readBits2 = parsableBitArray.readBits(5);
                if (readBits == 7) {
                    parsableBitArray.skipBits(2);
                    readBits = parsableBitArray.readBits(6);
                    if (readBits < 7) {
                        A.i.v(readBits, "Invalid extended service number: ", "Cea708Decoder");
                    }
                }
                if (readBits2 == 0) {
                    if (readBits != 0) {
                        Log.w("Cea708Decoder", "serviceNumber is non-zero (" + readBits + ") when blockSize is 0");
                    }
                } else if (readBits != this.f3507k) {
                    parsableBitArray.skipBytes(readBits2);
                } else {
                    int position = (readBits2 * 8) + parsableBitArray.getPosition();
                    while (parsableBitArray.getPosition() < position) {
                        int readBits3 = parsableBitArray.readBits(8);
                        boolean z11 = z9;
                        if (readBits3 != 16) {
                            if (readBits3 <= 31) {
                                if (readBits3 != 0) {
                                    if (readBits3 == 3) {
                                        this.f3510n = b();
                                    } else if (readBits3 != 8) {
                                        switch (readBits3) {
                                            case 12:
                                                c();
                                                break;
                                            case 13:
                                                this.f3509m.append('\n');
                                                break;
                                            case 14:
                                                break;
                                            default:
                                                if (readBits3 < 17 || readBits3 > 23) {
                                                    if (readBits3 < 24 || readBits3 > 31) {
                                                        A.i.v(readBits3, "Invalid C0 command: ", "Cea708Decoder");
                                                        break;
                                                    } else {
                                                        Log.w("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + readBits3);
                                                        parsableBitArray.skipBits(16);
                                                        break;
                                                    }
                                                } else {
                                                    Log.w("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + readBits3);
                                                    parsableBitArray.skipBits(8);
                                                    break;
                                                }
                                        }
                                    } else {
                                        this.f3509m.backspace();
                                    }
                                }
                            } else if (readBits3 <= 127) {
                                if (readBits3 == 127) {
                                    this.f3509m.append((char) 9835);
                                } else {
                                    this.f3509m.append((char) (readBits3 & 255));
                                }
                                z10 = z11;
                            } else {
                                if (readBits3 <= 159) {
                                    e[] eVarArr = this.f3508l;
                                    switch (readBits3) {
                                        case 128:
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 132:
                                        case 133:
                                        case 134:
                                        case 135:
                                            z6 = z11;
                                            z7 = false;
                                            int i7 = readBits3 - 128;
                                            if (this.f3513q != i7) {
                                                this.f3513q = i7;
                                                this.f3509m = eVarArr[i7];
                                                break;
                                            }
                                            break;
                                        case 136:
                                            z6 = z11;
                                            z7 = false;
                                            for (?? r12 = z6; r12 <= 8; r12++) {
                                                if (parsableBitArray.readBit()) {
                                                    eVarArr[8 - r12].clear();
                                                }
                                            }
                                            break;
                                        case 137:
                                            z7 = false;
                                            for (?? r13 = z11; r13 <= 8; r13++) {
                                                if (parsableBitArray.readBit()) {
                                                    z8 = z11;
                                                    eVarArr[8 - r13].setVisibility(z8);
                                                } else {
                                                    z8 = z11;
                                                }
                                                z11 = z8;
                                            }
                                            z6 = z11;
                                            break;
                                        case 138:
                                            for (?? r14 = z11; r14 <= 8; r14++) {
                                                if (parsableBitArray.readBit()) {
                                                    eVarArr[8 - r14].setVisibility(false);
                                                }
                                            }
                                            z7 = false;
                                            z6 = z11;
                                            break;
                                        case 139:
                                            for (?? r15 = z11; r15 <= 8; r15++) {
                                                if (parsableBitArray.readBit()) {
                                                    eVarArr[8 - r15].setVisibility(!r2.isVisible());
                                                }
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 140:
                                            for (?? r16 = z11; r16 <= 8; r16++) {
                                                if (parsableBitArray.readBit()) {
                                                    eVarArr[8 - r16].reset();
                                                }
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 141:
                                            parsableBitArray.skipBits(8);
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 142:
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 143:
                                            c();
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 144:
                                            if (this.f3509m.isDefined()) {
                                                this.f3509m.setPenAttributes(parsableBitArray.readBits(4), parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBit(), parsableBitArray.readBit(), parsableBitArray.readBits(3), parsableBitArray.readBits(3));
                                            } else {
                                                parsableBitArray.skipBits(16);
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 145:
                                            if (this.f3509m.isDefined()) {
                                                int argbColorFromCeaColor = e.getArgbColorFromCeaColor(parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2));
                                                int argbColorFromCeaColor2 = e.getArgbColorFromCeaColor(parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2));
                                                parsableBitArray.skipBits(2);
                                                this.f3509m.setPenColor(argbColorFromCeaColor, argbColorFromCeaColor2, e.getArgbColorFromCeaColor(parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2)));
                                            } else {
                                                parsableBitArray.skipBits(24);
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 146:
                                            if (this.f3509m.isDefined()) {
                                                parsableBitArray.skipBits(4);
                                                int readBits4 = parsableBitArray.readBits(4);
                                                parsableBitArray.skipBits(2);
                                                this.f3509m.setPenLocation(readBits4, parsableBitArray.readBits(6));
                                            } else {
                                                parsableBitArray.skipBits(16);
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        default:
                                            A.i.v(readBits3, "Invalid C1 command: ", "Cea708Decoder");
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 151:
                                            if (this.f3509m.isDefined()) {
                                                int argbColorFromCeaColor3 = e.getArgbColorFromCeaColor(parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2));
                                                int readBits5 = parsableBitArray.readBits(2);
                                                int argbColorFromCeaColor4 = e.getArgbColorFromCeaColor(parsableBitArray.readBits(2), parsableBitArray.readBits(2), parsableBitArray.readBits(2));
                                                if (parsableBitArray.readBit()) {
                                                    readBits5 |= 4;
                                                }
                                                boolean readBit = parsableBitArray.readBit();
                                                int readBits6 = parsableBitArray.readBits(2);
                                                int readBits7 = parsableBitArray.readBits(2);
                                                int readBits8 = parsableBitArray.readBits(2);
                                                parsableBitArray.skipBits(8);
                                                this.f3509m.setWindowAttributes(argbColorFromCeaColor3, argbColorFromCeaColor4, readBit, readBits5, readBits6, readBits7, readBits8);
                                            } else {
                                                parsableBitArray.skipBits(32);
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                        case 152:
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                            int i8 = readBits3 - 152;
                                            e eVar = eVarArr[i8];
                                            parsableBitArray.skipBits(2);
                                            boolean readBit2 = parsableBitArray.readBit();
                                            parsableBitArray.skipBits(2);
                                            int readBits9 = parsableBitArray.readBits(3);
                                            boolean readBit3 = parsableBitArray.readBit();
                                            int readBits10 = parsableBitArray.readBits(7);
                                            int readBits11 = parsableBitArray.readBits(8);
                                            int readBits12 = parsableBitArray.readBits(4);
                                            int readBits13 = parsableBitArray.readBits(4);
                                            parsableBitArray.skipBits(2);
                                            parsableBitArray.skipBits(6);
                                            parsableBitArray.skipBits(2);
                                            eVar.defineWindow(readBit2, readBits9, readBit3, readBits10, readBits11, readBits13, readBits12, parsableBitArray.readBits(3), parsableBitArray.readBits(3));
                                            if (this.f3513q != i8) {
                                                this.f3513q = i8;
                                                this.f3509m = eVarArr[i8];
                                            }
                                            z6 = z11;
                                            z7 = false;
                                            break;
                                    }
                                } else {
                                    z6 = z11;
                                    z7 = false;
                                    if (readBits3 <= 255) {
                                        this.f3509m.append((char) (readBits3 & 255));
                                    } else {
                                        A.i.v(readBits3, "Invalid base command: ", "Cea708Decoder");
                                        z11 = z6;
                                        c7 = 6;
                                    }
                                }
                                z10 = z6;
                                z11 = z10;
                                c7 = 6;
                            }
                            c7 = 6;
                        } else {
                            int readBits14 = parsableBitArray.readBits(8);
                            if (readBits14 <= 31) {
                                if (readBits14 > 7) {
                                    if (readBits14 <= 15) {
                                        parsableBitArray.skipBits(8);
                                    } else if (readBits14 <= 23) {
                                        parsableBitArray.skipBits(16);
                                    } else if (readBits14 <= 31) {
                                        parsableBitArray.skipBits(24);
                                    }
                                }
                            } else if (readBits14 <= 127) {
                                if (readBits14 == 32) {
                                    this.f3509m.append(TokenParser.SP);
                                } else if (readBits14 == 33) {
                                    this.f3509m.append((char) 160);
                                } else if (readBits14 == 37) {
                                    this.f3509m.append((char) 8230);
                                } else if (readBits14 == 42) {
                                    this.f3509m.append((char) 352);
                                } else if (readBits14 == 44) {
                                    this.f3509m.append((char) 338);
                                } else if (readBits14 == 63) {
                                    this.f3509m.append((char) 376);
                                } else if (readBits14 == 57) {
                                    this.f3509m.append((char) 8482);
                                } else if (readBits14 == 58) {
                                    this.f3509m.append((char) 353);
                                } else if (readBits14 == 60) {
                                    this.f3509m.append((char) 339);
                                } else if (readBits14 != 61) {
                                    switch (readBits14) {
                                        case 48:
                                            this.f3509m.append((char) 9608);
                                            break;
                                        case 49:
                                            this.f3509m.append((char) 8216);
                                            break;
                                        case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                            this.f3509m.append((char) 8217);
                                            break;
                                        case 51:
                                            this.f3509m.append((char) 8220);
                                            break;
                                        case 52:
                                            this.f3509m.append((char) 8221);
                                            break;
                                        case 53:
                                            this.f3509m.append((char) 8226);
                                            break;
                                        default:
                                            switch (readBits14) {
                                                case 118:
                                                    this.f3509m.append((char) 8539);
                                                    break;
                                                case 119:
                                                    this.f3509m.append((char) 8540);
                                                    break;
                                                case 120:
                                                    this.f3509m.append((char) 8541);
                                                    break;
                                                case 121:
                                                    this.f3509m.append((char) 8542);
                                                    break;
                                                case 122:
                                                    this.f3509m.append((char) 9474);
                                                    break;
                                                case 123:
                                                    this.f3509m.append((char) 9488);
                                                    break;
                                                case 124:
                                                    this.f3509m.append((char) 9492);
                                                    break;
                                                case 125:
                                                    this.f3509m.append((char) 9472);
                                                    break;
                                                case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                                    this.f3509m.append((char) 9496);
                                                    break;
                                                case 127:
                                                    this.f3509m.append((char) 9484);
                                                    break;
                                                default:
                                                    A.i.v(readBits14, "Invalid G2 character: ", "Cea708Decoder");
                                                    break;
                                            }
                                    }
                                } else {
                                    this.f3509m.append((char) 8480);
                                }
                                z10 = z11;
                            } else if (readBits14 > 159) {
                                c7 = 6;
                                if (readBits14 <= 255) {
                                    if (readBits14 == 160) {
                                        this.f3509m.append((char) 13252);
                                    } else {
                                        A.i.v(readBits14, "Invalid G3 character: ", "Cea708Decoder");
                                        this.f3509m.append('_');
                                    }
                                    z10 = z11;
                                } else {
                                    A.i.v(readBits14, "Invalid extended command: ", "Cea708Decoder");
                                }
                            } else if (readBits14 <= 135) {
                                parsableBitArray.skipBits(32);
                            } else if (readBits14 <= 143) {
                                parsableBitArray.skipBits(40);
                            } else if (readBits14 <= 159) {
                                parsableBitArray.skipBits(2);
                                c7 = 6;
                                parsableBitArray.skipBits(parsableBitArray.readBits(6) * 8);
                            }
                            c7 = 6;
                        }
                        z9 = z11;
                    }
                }
            }
        }
        if (z10) {
            this.f3510n = b();
        }
        this.f3512p = null;
    }

    public final List b() {
        d build;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 8; i2++) {
            e[] eVarArr = this.f3508l;
            if (!eVarArr[i2].isEmpty() && eVarArr[i2].isVisible() && (build = eVarArr[i2].build()) != null) {
                arrayList.add(build);
            }
        }
        Collections.sort(arrayList, d.f3465c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            arrayList2.add(((d) arrayList.get(i7)).f3466a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public final void c() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.f3508l[i2].reset();
        }
    }

    @Override // T0.j
    public S0.i createSubtitle() {
        List list = this.f3510n;
        this.f3511o = list;
        return new k((List) v.checkNotNull(list));
    }

    @Override // T0.j
    public void decode(m mVar) {
        ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(mVar.data);
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        ParsableByteArray parsableByteArray = this.f3504h;
        parsableByteArray.reset(array, limit);
        while (parsableByteArray.bytesLeft() >= 3) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i2 = readUnsignedByte & 3;
            boolean z6 = (readUnsignedByte & 4) == 4;
            byte readUnsignedByte2 = (byte) parsableByteArray.readUnsignedByte();
            byte readUnsignedByte3 = (byte) parsableByteArray.readUnsignedByte();
            if (i2 == 2 || i2 == 3) {
                if (z6) {
                    if (i2 == 3) {
                        a();
                        int i7 = (readUnsignedByte2 & 192) >> 6;
                        int i8 = this.f3506j;
                        if (i8 != -1 && i7 != (i8 + 1) % 4) {
                            c();
                            Log.w("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f3506j + " current=" + i7);
                        }
                        this.f3506j = i7;
                        int i9 = readUnsignedByte2 & 63;
                        if (i9 == 0) {
                            i9 = 64;
                        }
                        f fVar = new f(i7, i9);
                        this.f3512p = fVar;
                        int i10 = fVar.f3503d;
                        fVar.f3503d = i10 + 1;
                        fVar.f3502c[i10] = readUnsignedByte3;
                    } else {
                        v.checkArgument(i2 == 2);
                        f fVar2 = this.f3512p;
                        if (fVar2 == null) {
                            Log.e("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr = fVar2.f3502c;
                            int i11 = fVar2.f3503d;
                            int i12 = i11 + 1;
                            fVar2.f3503d = i12;
                            bArr[i11] = readUnsignedByte2;
                            fVar2.f3503d = i11 + 2;
                            bArr[i12] = readUnsignedByte3;
                        }
                    }
                    f fVar3 = this.f3512p;
                    if (fVar3.f3503d == (fVar3.f3501b * 2) - 1) {
                        a();
                    }
                }
            }
        }
    }

    @Override // T0.j, u0.InterfaceC1664e
    public /* bridge */ /* synthetic */ m dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // T0.j, u0.InterfaceC1664e
    public /* bridge */ /* synthetic */ n dequeueOutputBuffer() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // T0.j, u0.InterfaceC1664e
    public void flush() {
        super.flush();
        this.f3510n = null;
        this.f3511o = null;
        this.f3513q = 0;
        this.f3509m = this.f3508l[0];
        c();
        this.f3512p = null;
    }

    @Override // u0.InterfaceC1664e
    public String getName() {
        return "Cea708Decoder";
    }

    @Override // T0.j
    public boolean isNewSubtitleDataAvailable() {
        return this.f3510n != this.f3511o;
    }

    @Override // T0.j
    public /* bridge */ /* synthetic */ void queueInputBuffer(m mVar) throws SubtitleDecoderException {
        super.queueInputBuffer(mVar);
    }

    @Override // T0.j, u0.InterfaceC1664e
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // T0.j, S0.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j7) {
        super.setPositionUs(j7);
    }
}
