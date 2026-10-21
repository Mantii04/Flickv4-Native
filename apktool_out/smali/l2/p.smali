.class public final Ll2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ll2/n;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ll2/o;

.field public final c:Ljava/lang/String;

.field public volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll2/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll2/p;->e:Ll2/n;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LG2/r;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ll2/p;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Ll2/p;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p3}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ll2/o;

    .line 17
    .line 18
    iput-object p1, p0, Ll2/p;->b:Ll2/o;

    .line 19
    .line 20
    return-void
.end method

.method public static disk(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)Ll2/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ll2/o;",
            ")",
            "Ll2/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll2/p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ll2/p;-><init>(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static memory(Ljava/lang/String;)Ll2/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ll2/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll2/p;

    sget-object v1, Ll2/p;->e:Ll2/n;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Ll2/p;-><init>(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)V

    return-object v0
.end method

.method public static memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Ll2/p;"
        }
    .end annotation

    .line 2
    new-instance v0, Ll2/p;

    sget-object v1, Ll2/p;->e:Ll2/n;

    invoke-direct {v0, p0, p1, v1}, Ll2/p;-><init>(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ll2/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ll2/p;

    .line 6
    .line 7
    iget-object v0, p0, Ll2/p;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Ll2/p;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/p;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/p;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Option{key=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll2/p;->c:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\'}"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/p;->b:Ll2/o;

    .line 2
    .line 3
    iget-object v1, p0, Ll2/p;->d:[B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Ll2/p;->c:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ll2/m;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Ll2/p;->d:[B

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Ll2/p;->d:[B

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2}, Ll2/o;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
