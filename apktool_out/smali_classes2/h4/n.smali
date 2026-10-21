.class public abstract Lh4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final n:Lh4/f;

.field public static final p:Lh4/d;


# instance fields
.field public b:Ljava/lang/String;

.field public e:Ljava/lang/Class;

.field public f:Lh4/k;

.field public final j:[Ljava/lang/Object;

.field public m:Lh4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh4/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lh4/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh4/n;->n:Lh4/f;

    .line 7
    .line 8
    new-instance v0, Lh4/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lh4/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lh4/n;->p:Lh4/d;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh4/n;->f:Lh4/k;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lh4/n;->j:[Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, p0, Lh4/n;->b:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lh4/n;
    .locals 1

    .line 1
    new-instance v0, Lh4/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lh4/l;-><init>(Ljava/lang/String;[F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lh4/n;
    .locals 1

    .line 1
    new-instance v0, Lh4/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lh4/m;-><init>(Ljava/lang/String;[I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract a(F)V
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public clone()Lh4/n;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lh4/n;

    .line 6
    .line 7
    iget-object v1, p0, Lh4/n;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, v0, Lh4/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lh4/n;->f:Lh4/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Lh4/k;->clone()Lh4/k;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lh4/n;->f:Lh4/k;

    .line 18
    .line 19
    iget-object v1, p0, Lh4/n;->m:Lh4/o;

    .line 20
    .line 21
    iput-object v1, v0, Lh4/n;->m:Lh4/o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh4/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object v0, p0, Lh4/n;->e:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1}, Lh4/k;->ofFloat([F)Lh4/k;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lh4/n;->f:Lh4/k;

    .line 10
    .line 11
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object v0, p0, Lh4/n;->e:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1}, Lh4/k;->ofInt([I)Lh4/k;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lh4/n;->f:Lh4/k;

    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh4/n;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ": "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lh4/n;->f:Lh4/k;

    .line 17
    .line 18
    invoke-virtual {v1}, Lh4/k;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
