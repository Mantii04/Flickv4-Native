.class public final LE2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE2/d;


# static fields
.field public static final a:LE2/b;

.field public static final b:LE2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LE2/b;

    .line 2
    .line 3
    invoke-direct {v0}, LE2/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LE2/b;->a:LE2/b;

    .line 7
    .line 8
    new-instance v0, LE2/a;

    .line 9
    .line 10
    invoke-direct {v0}, LE2/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LE2/b;->b:LE2/a;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getFactory()LE2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "LE2/e;"
        }
    .end annotation

    .line 1
    sget-object v0, LE2/b;->b:LE2/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;LE2/c;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
