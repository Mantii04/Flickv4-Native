.class public final LM/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LD/c;

.field public final b:LD/c;


# direct methods
.method public constructor <init>(LD/c;LD/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LM/I0;->a:LD/c;

    .line 3
    iput-object p2, p0, LM/I0;->b:LD/c;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, LM/Q0;->getLowerBounds(Landroid/view/WindowInsetsAnimation$Bounds;)LD/c;

    move-result-object v0

    iput-object v0, p0, LM/I0;->a:LD/c;

    .line 6
    invoke-static {p1}, LM/Q0;->getHigherBounds(Landroid/view/WindowInsetsAnimation$Bounds;)LD/c;

    move-result-object p1

    iput-object p1, p0, LM/I0;->b:LD/c;

    return-void
.end method

.method public static toBoundsCompat(Landroid/view/WindowInsetsAnimation$Bounds;)LM/I0;
    .locals 1

    .line 1
    new-instance v0, LM/I0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LM/I0;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getLowerBound()LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/I0;->a:LD/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpperBound()LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/I0;->b:LD/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public toBounds()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 1
    invoke-static {p0}, LM/Q0;->createPlatformBounds(LM/I0;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Bounds{lower="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LM/I0;->a:LD/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " upper="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LM/I0;->b:LD/c;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "}"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
