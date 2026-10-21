.class public final Lokhttp3/dnsoverhttps/DnsRecordCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

.field private static final NXDOMAIN:I = 0x3

.field private static final SERVFAIL:I = 0x2

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x1c

.field private static final TYPE_PTR:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsRecordCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;->INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

    .line 7
    .line 8
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    sput-object v0, Lokhttp3/dnsoverhttps/DnsRecordCodec;->ASCII:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final skipName(Le6/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le6/l;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Le6/l;->skip(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    invoke-virtual {p1, v0, v1}, Le6/l;->skip(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Le6/l;->readByte()B

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final decodeAnswers(Ljava/lang/String;Lokio/ByteString;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "byteString"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Le6/l;

    .line 17
    .line 18
    invoke-direct {v1}, Le6/l;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Le6/l;->write(Lokio/ByteString;)Le6/l;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const v2, 0xffff

    .line 32
    .line 33
    .line 34
    and-int v3, p2, v2

    .line 35
    .line 36
    shr-int/lit8 v3, v3, 0xf

    .line 37
    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    and-int/lit8 p2, p2, 0xf

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq p2, v3, :cond_4

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-eq p2, v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    and-int/2addr p1, v2

    .line 53
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    and-int/2addr p2, v2

    .line 58
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    move v4, v3

    .line 66
    :goto_0
    if-ge v4, p1, :cond_0

    .line 67
    .line 68
    invoke-direct {p0, v1}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->skipName(Le6/l;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 75
    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    :goto_1
    if-ge v3, p2, :cond_2

    .line 81
    .line 82
    invoke-direct {p0, v1}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->skipName(Le6/l;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    and-int/2addr p1, v2

    .line 90
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Le6/l;->readInt()I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Le6/l;->readShort()S

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    and-int/2addr v4, v2

    .line 101
    const/4 v5, 0x1

    .line 102
    if-eq p1, v5, :cond_1

    .line 103
    .line 104
    const/16 v5, 0x1c

    .line 105
    .line 106
    if-eq p1, v5, :cond_1

    .line 107
    .line 108
    int-to-long v4, v4

    .line 109
    invoke-virtual {v1, v4, v5}, Le6/l;->skip(J)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    new-array p1, v4, [B

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Le6/l;->read([B)I

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v4, "getByAddress(bytes)"

    .line 123
    .line 124
    invoke-static {p1, v4}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    return-object v0

    .line 134
    :cond_3
    new-instance p2, Ljava/net/UnknownHostException;

    .line 135
    .line 136
    const-string v0, ": NXDOMAIN"

    .line 137
    .line 138
    invoke-static {p1, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p2

    .line 146
    :cond_4
    new-instance p2, Ljava/net/UnknownHostException;

    .line 147
    .line 148
    const-string v0, ": SERVFAIL"

    .line 149
    .line 150
    invoke-static {p1, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p2, "not a response"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public final encodeQuery(Ljava/lang/String;I)Lokio/ByteString;
    .locals 12

    .line 1
    const-string v1, "host"

    .line 2
    .line 3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v6, Le6/l;

    .line 7
    .line 8
    invoke-direct {v6}, Le6/l;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    invoke-virtual {v6, v7}, Le6/l;->writeShort(I)Le6/l;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x100

    .line 16
    .line 17
    invoke-virtual {v6, v1}, Le6/l;->writeShort(I)Le6/l;

    .line 18
    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    invoke-virtual {v6, v8}, Le6/l;->writeShort(I)Le6/l;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v7}, Le6/l;->writeShort(I)Le6/l;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v7}, Le6/l;->writeShort(I)Le6/l;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v7}, Le6/l;->writeShort(I)Le6/l;

    .line 31
    .line 32
    .line 33
    new-instance v9, Le6/l;

    .line 34
    .line 35
    invoke-direct {v9}, Le6/l;-><init>()V

    .line 36
    .line 37
    .line 38
    new-array v1, v8, [C

    .line 39
    .line 40
    const/16 v2, 0x2e

    .line 41
    .line 42
    aput-char v2, v1, v7

    .line 43
    .line 44
    const/4 v4, 0x6

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v0, p1

    .line 49
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    add-int/2addr v2, v8

    .line 93
    invoke-static {v1, v2}, Lv5/u;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-static {}, Lv5/p;->emptyList()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/String;

    .line 117
    .line 118
    const/4 v3, 0x3

    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-static {v2, v7, v7, v3, v4}, Le6/P;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    int-to-long v10, v5

    .line 129
    cmp-long v5, v3, v10

    .line 130
    .line 131
    if-nez v5, :cond_2

    .line 132
    .line 133
    long-to-int v3, v3

    .line 134
    invoke-virtual {v9, v3}, Le6/l;->writeByte(I)Le6/l;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v2}, Le6/l;->writeUtf8(Ljava/lang/String;)Le6/l;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    const-string v1, "non-ascii hostname: "

    .line 142
    .line 143
    invoke-static {v1, p1}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_3
    invoke-virtual {v9, v7}, Le6/l;->writeByte(I)Le6/l;

    .line 158
    .line 159
    .line 160
    const-wide/16 v4, 0x0

    .line 161
    .line 162
    move-object v3, v6

    .line 163
    invoke-virtual {v9}, Le6/l;->size()J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    move-object v2, v9

    .line 168
    invoke-virtual/range {v2 .. v7}, Le6/l;->copyTo(Le6/l;JJ)Le6/l;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p2}, Le6/l;->writeShort(I)Le6/l;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v8}, Le6/l;->writeShort(I)Le6/l;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Le6/l;->readByteString()Lokio/ByteString;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0
.end method
