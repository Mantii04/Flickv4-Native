.class public final LY5/e;
.super LY5/h;
.source "SourceFile"


# static fields
.field public static final j:LY5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LY5/e;

    .line 2
    .line 3
    sget v1, LY5/n;->c:I

    .line 4
    .line 5
    sget v2, LY5/n;->d:I

    .line 6
    .line 7
    sget-wide v3, LY5/n;->e:J

    .line 8
    .line 9
    sget-object v5, LY5/n;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, LY5/h;-><init>(IIJLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LY5/e;->j:LY5/e;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object v0
.end method
