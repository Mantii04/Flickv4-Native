.class public final Le6/A;
.super Lv5/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final j:Le6/z;


# instance fields
.field public final e:[Lokio/ByteString;

.field public final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le6/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Le6/z;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Le6/A;->j:Le6/z;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le6/A;->e:[Lokio/ByteString;

    .line 5
    .line 6
    iput-object p2, p0, Le6/A;->f:[I

    .line 7
    .line 8
    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Le6/A;
    .locals 1

    .line 1
    sget-object v0, Le6/A;->j:Le6/z;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Le6/z;->of([Lokio/ByteString;)Le6/A;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Le6/A;->contains(Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public bridge contains(Lokio/ByteString;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/A;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .locals 1

    .line 2
    iget-object v0, p0, Le6/A;->e:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getByteStrings$okio()[Lokio/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/A;->e:[Lokio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Le6/A;->e:[Lokio/ByteString;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final getTrie$okio()[I
    .locals 1

    .line 1
    iget-object v0, p0, Le6/A;->f:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Le6/A;->indexOf(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public bridge indexOf(Lokio/ByteString;)I
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lv5/e;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Le6/A;->lastIndexOf(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lokio/ByteString;)I
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lv5/e;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
