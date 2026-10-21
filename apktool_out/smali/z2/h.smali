.class public final Lz2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/e;


# static fields
.field public static final a:Lz2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz2/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lz2/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz2/h;->a:Lz2/h;

    .line 7
    .line 8
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

.method public static get()Lz2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/e;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz2/h;->a:Lz2/h;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public transcode(Ln2/M;Ll2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    return-object p1
.end method
