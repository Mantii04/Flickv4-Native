.class public final Lm0/a;
.super Lm0/c;
.source "SourceFile"


# static fields
.field public static final b:Lm0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lm0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm0/a;->b:Lm0/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get(Lm0/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm0/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
