.class public final Ln2/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/m;


# static fields
.field public static final j:LG2/o;


# instance fields
.field public final b:Lo2/b;

.field public final c:Ll2/m;

.field public final d:Ll2/m;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;

.field public final h:Ll2/q;

.field public final i:Ll2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LG2/o;

    .line 2
    .line 3
    const-wide/16 v1, 0x32

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, LG2/o;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ln2/O;->j:LG2/o;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lo2/b;Ll2/m;Ll2/m;IILl2/t;Ljava/lang/Class;Ll2/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/O;->b:Lo2/b;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/O;->c:Ll2/m;

    .line 7
    .line 8
    iput-object p3, p0, Ln2/O;->d:Ll2/m;

    .line 9
    .line 10
    iput p4, p0, Ln2/O;->e:I

    .line 11
    .line 12
    iput p5, p0, Ln2/O;->f:I

    .line 13
    .line 14
    iput-object p6, p0, Ln2/O;->i:Ll2/t;

    .line 15
    .line 16
    iput-object p7, p0, Ln2/O;->g:Ljava/lang/Class;

    .line 17
    .line 18
    iput-object p8, p0, Ln2/O;->h:Ll2/q;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ln2/O;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ln2/O;

    .line 7
    .line 8
    iget v0, p1, Ln2/O;->f:I

    .line 9
    .line 10
    iget v2, p0, Ln2/O;->f:I

    .line 11
    .line 12
    if-ne v2, v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Ln2/O;->e:I

    .line 15
    .line 16
    iget v2, p1, Ln2/O;->e:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Ln2/O;->i:Ll2/t;

    .line 21
    .line 22
    iget-object v2, p1, Ln2/O;->i:Ll2/t;

    .line 23
    .line 24
    invoke-static {v0, v2}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Ln2/O;->g:Ljava/lang/Class;

    .line 31
    .line 32
    iget-object v2, p1, Ln2/O;->g:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Ln2/O;->c:Ll2/m;

    .line 41
    .line 42
    iget-object v2, p1, Ln2/O;->c:Ll2/m;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ll2/m;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Ln2/O;->d:Ll2/m;

    .line 51
    .line 52
    iget-object v2, p1, Ln2/O;->d:Ll2/m;

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ll2/m;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Ln2/O;->h:Ll2/q;

    .line 61
    .line 62
    iget-object p1, p1, Ln2/O;->h:Ll2/q;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ll2/q;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/O;->c:Ll2/m;

    .line 2
    .line 3
    invoke-interface {v0}, Ll2/m;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Ln2/O;->d:Ll2/m;

    .line 10
    .line 11
    invoke-interface {v1}, Ll2/m;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Ln2/O;->e:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    iget v0, p0, Ln2/O;->f:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iget-object v0, p0, Ln2/O;->i:Ll2/t;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    iget-object v0, p0, Ln2/O;->g:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Ln2/O;->h:Ll2/q;

    .line 49
    .line 50
    invoke-virtual {v1}, Ll2/q;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResourceCacheKey{sourceKey="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ln2/O;->c:Ll2/m;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", signature="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ln2/O;->d:Ll2/m;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", width="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Ln2/O;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", height="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Ln2/O;->f:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", decodedResourceClass="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Ln2/O;->g:Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", transformation=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Ln2/O;->i:Ll2/t;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', options="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Ln2/O;->h:Ll2/q;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6

    .line 1
    const-class v0, [B

    .line 2
    .line 3
    iget-object v1, p0, Ln2/O;->b:Lo2/b;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lo2/l;

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    invoke-virtual {v2, v3, v0}, Lo2/l;->getExact(ILjava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [B

    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, p0, Ln2/O;->e:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Ln2/O;->f:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Ln2/O;->d:Ll2/m;

    .line 36
    .line 37
    invoke-interface {v2, p1}, Ll2/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Ln2/O;->c:Ll2/m;

    .line 41
    .line 42
    invoke-interface {v2, p1}, Ll2/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Ln2/O;->i:Ll2/t;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-interface {v2, p1}, Ll2/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Ln2/O;->h:Ll2/q;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ll2/q;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Ln2/O;->j:LG2/o;

    .line 61
    .line 62
    iget-object v3, p0, Ln2/O;->g:Ljava/lang/Class;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, LG2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, [B

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v5, Ll2/m;->a:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2, v3, v4}, LG2/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    .line 87
    .line 88
    check-cast v1, Lo2/l;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lo2/l;->put(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
