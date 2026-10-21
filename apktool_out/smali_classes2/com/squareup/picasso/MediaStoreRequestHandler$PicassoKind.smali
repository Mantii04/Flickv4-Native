.class final enum Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

.field public static final enum m:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

.field public static final enum n:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

.field public static final synthetic p:[Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;


# instance fields
.field public final b:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 2
    .line 3
    const/16 v4, 0x60

    .line 4
    .line 5
    const/16 v5, 0x60

    .line 6
    .line 7
    const-string v1, "MICRO"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->j:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 15
    .line 16
    new-instance v1, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 17
    .line 18
    const/16 v5, 0x200

    .line 19
    .line 20
    const/16 v6, 0x180

    .line 21
    .line 22
    const-string v2, "MINI"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->m:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 30
    .line 31
    new-instance v2, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    const/4 v7, -0x1

    .line 35
    const-string v3, "FULL"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x2

    .line 39
    invoke-direct/range {v2 .. v7}, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    .line 40
    .line 41
    .line 42
    sput-object v2, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->n:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v3, v3, [Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    aput-object v0, v3, v4

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-object v1, v3, v0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v2, v3, v0

    .line 55
    .line 56
    sput-object v3, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->p:[Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->b:I

    .line 5
    .line 6
    iput p4, p0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->e:I

    .line 7
    .line 8
    iput p5, p0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->f:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .locals 1

    .line 1
    const-class v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->p:[Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 8
    .line 9
    return-object v0
.end method
