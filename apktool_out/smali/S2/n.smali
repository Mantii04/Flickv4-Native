.class public final LS2/n;
.super LS2/E;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Lcom/google/android/datatransport/Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LS2/E;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS2/n;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LS2/n;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, LS2/n;->c:Lcom/google/android/datatransport/Priority;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LS2/E;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, LS2/E;

    .line 11
    .line 12
    invoke-virtual {p1}, LS2/E;->getBackendName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v3, p0, LS2/n;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    instance-of v1, p1, LS2/n;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, LS2/n;

    .line 30
    .line 31
    iget-object v1, v1, LS2/n;->b:[B

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, LS2/E;->getExtras()[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    iget-object v3, p0, LS2/n;->b:[B

    .line 39
    .line 40
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, LS2/n;->c:Lcom/google/android/datatransport/Priority;

    .line 47
    .line 48
    invoke-virtual {p1}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    return v2
.end method

.method public getBackendName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LS2/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtras()[B
    .locals 1

    .line 1
    iget-object v0, p0, LS2/n;->b:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()Lcom/google/android/datatransport/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, LS2/n;->c:Lcom/google/android/datatransport/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, LS2/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, LS2/n;->b:[B

    .line 13
    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    xor-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v1, p0, LS2/n;->c:Lcom/google/android/datatransport/Priority;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method
