import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABL1BMVEXFv7lubm66r4QAAAAwMDBCQkI/RGN4aE0VFRVNWEZBRma9sobIwrzLxb9CQT6/tIhQSzksJx1aVEAbHStxcXE/Pz9FRUURERFra2scHBwoKCghISGalo8tLS1nW0UYGiYrL0QzN1AXFA+KgmIhJDRfTjwiJx8MDRMSExw4PFgmKTxmY2CsonqTimhMRzaGgn66ta+AfHgiHhdSUlInLSRETj47RDasp6I1MiWmnHZhW0WWk5AaHhhaWlp9dllwalA0LSFDOitMPjB/d25uZ1+kmY0yOS1jVkAwLiJuaVgeGBKRg2KfkW1zYkhIPCzc1s95aDthUy+2m1nnxXCRfEbZuWnHqmE1LhoGBjEMC2UQD4gmCAQ9DQcKCVUIBz57Gg6NHhBmFQwDAxtZEwohBwR1uJRKAAAYXUlEQVR4nO2djVfiyJbAkYuCQAxBIPIlX7aCfIMKiCD0dOusg86bN2935828fbNvd///v2HvrUogCQmiTbrS5/Q9Z1qEyNSPe+t+VVHx+b7Ld/ku3+W7fJfv8l2+y3fZSqKSJHoI7oo0yHSlqP1r0ajDC9+SRAcAEBqsq5FU2xl0fJIT/jci0Q4w6fvMHJI0nvBXQvXcN80oBUAToxqjUpeeUkOhkEoP2t8uo9SGpZwsMaRBCHWXCXDJ4C+ZzjfrjcAggQ5HlMbIlw+sJI+KzH2biFFujFIuZbBU0msmYJYswNhLiFH0gyZxcvpSVptlkq/NHiJGNLcOiKaK+F6Zi0g3GCcmRxnmI9RMsl/vtgcdW07uSLU/y5HTSUg+O0Cmxa+OYiekjD7YSrLeHlgoSV0AdUn/2zH6lEAK0jaAgcDqQpEiDSYGJpXEjJlqdwyOP8o8aW75RJS7VlvAANJ3hEAZJOrT+NR0Jm8aXT6fyWTTnDbfXULyqGfUjBQNQNaBUMV4IoRrNboBI0jbzSKdNMsoU2OebEsJ/OXINOyokwoDoZD5w/j6QlHM3kmYhUN2fThaaQ8f7RmHjTPTfhYGAmpIsDtlgE6js2gyzRwMuley0rFx1KhVByNFQhXaAglZieA0uHVhjF3mWEx6kfqQt/+LPBEK9aZba1ATCvBJIjQ5SOnIaRpmiLAvjlCqO3p5R8lwx0sxcqlGLDWcPhEqM1ICdbiVk7EKs9XkZMzqXJYNoA4drDRNhEfCCCl0h94MuFQjSbafGKPvmTh9UKxUFGel6CDeoUKSLEo6HdJSH7Xed3BX6Gjwoq44QspV3kVoYMjwpMfeFnAaCo2HnR0QMsmk7R0WqTAEIXHTcPx2T+okaTszzYdCYo10l4R5m3fKkgZDIgtEltDsxEoDVCWppsokT1OQASYEZzTv86U2Ql1ENY0+FiuuLLpZDqiKrSyk0Btztk2S4Y1SogotBQE7QgsLTNrUXRFSympg0wHFNqJYw2VnhCzVUc18YLOy8VVFUnc4EXkLeMlIj1M+0a1EqmXfk5g6iiFjRevwRMN7h/FCY0zrfbqxJ9ZlSIk786YryZORJr2gQdYk26Gv0SXNQr3QOLEUytx2rsQ8X0EU2YAyiJTaqTtlkuW+1AvtfB+15NO7djbMSMU2oAwidT6Vd+xP87ym8AZhNErNtthuEPMZ1ttY5dwT8YTRDlro1C8339QWtpVMNqSas1KsfIV7GtoyEovI8ihWhnczkubS6ZA15xbbnlmKCreyX660egDDmN3y2qt0aavmDCpMCzdSKcMA71uowaEsN+713iAfs2oSfCKdpvoWC9w8V11adaLjKhyLViEWhy0EvG2pBOj3o7k2Krdzy+qvs2zCI0DhnpSaNBHSIHBAkghSyrK/0Zze397GWzGUuCb4sNVqzefz4fBHpbeiNNWD2uI4+xkQDeiLqrCIyFPSYC/iNwsDRZWOms3KFGmJbwWLgs+05krZoMvlyn+PPys+Ukh7EJe5k1H9VsIlKYnM9doYLUi1RlBU87DHIenf+X1l5Kdrm+i18qKLe2p3+yOj1hBH1pQdANdxafiV6a1Jo60fCa/VxBcjEc0EGjHaUCQUEN3MVJbjNAlj2wGuQJEE7ZdxMk3ip9RqyGY7oCRCbOKNZWFEbpKNwpv4jJz+xqJyH48pZAVrdi43xCJiVXgrR2Kt7W3UkbNRifvt3iLiF7lgQUa6QBU+Abqb9wNqKA7vEGmIzNukJPjl2Py9Nrqd4FwUl7hh1SsvKFvDtA0dvFO0+FLEljiHKoVAviUVNnAmTdUvmYubBO1UlJli0t0gFbbk0S2LZrbO4otFjgvrRuE8nJIK7ylal3uYklTcQERnowoyU6kPLF9rgdpTFKWsuqRGOSaqhsJowVQYA+SjsP/kjhojC1EpeLQLVAKMYjBTFF4SIOe8sXNGWdQSMN+pXUZP8BjXir0nBdU43RIxsm18kYeC9imwPQpwj4TxU72aLc8wxRluoUbqXVUa8lYfBv4fBOU1tCADIyKMLdsSZYXU2NysHkwPmrdUDg6n/lchqYdg2PH+VUU6wkHK+P9nqdsK8Yl6NxuU15i22JXkmWBe2ex/G6hpYYSkw7gcqcB8BiZE5HbEG90zr1TuKb2yWn6ix3HH/gBZaCwmjJB5mkok0oR5z0yowshuzHhpnPUrnnpaIwYwkJY3V1+xeCwiah6yveiNCCaOsycDYY/M1M6fRvzsA0AxXK0ojDHu4FgjDSSUfxTkS2nRkMwxAr0n85h7dhUjVbPlnpFO+zx4urCwVeNoEYvfypAVEw9pYyk1STEgK5Yh20xEBqiAVcqKoqnx1qLFCNZjcWriTBeiWhm0sZSVhkMYrgBbnHAdsIw0vTVC4IT0ytD0qUSa96TAeDyGlYtAR0PzDQNiazngx1OFPM2/yXaAyroOdUKFLfAYFOhvxWP3rFEuiyoQ2XdAKbSjMx/q4SJ2ekpt7OGakfa4Pa4T4vUc0NiQlCvxW30loNIUZaTsaxboSv2REUB5CXh6+rRuo7IGqKwt2fTwD2IzfH5u/FAarWVLfCqXReVszJVqJohWqiq9+elp/IXUtBYNZd0aZ1bCIX0mpz2z1iMVvRU+kuVbYcsX7Nv0sm5VqI3HFjfC+Xr8RmfEAB/jVsI4ASqgmD4TWTdRBKyAKoYPCfMrQkwteWramo7sum6oCIwiPTRiC+ATAc6gbLme+dApvpO8ELgCJSXBGPbkKaOzbyrKUywdFbTi07mZMMYAwZyYRihKtO4jfOVCXF+fviujGv3fhpYpta5VhU05U1KDfuaxzP2V8WqchlOqqvCDgZ64tj5LS7ftWMgLDOkzhmh0p6enLWpfWT+ZUauFzkr2Y9k5V0RVTtoXLbbuyUTIGcGcO86VBhXbpkeE1VkV6uPFVYHftOi8hRDVGLmnISNifD7r9Wbzx2f0rD2njscUPwglFmuJ3GFKX0N402IFW9XttV5e5iTDmUJ5rf07YHjBK2Ox2FDkpihKahpvIcSBj4ZGR+Nc+UYWQ7aLI1YWedQATcTKG1ecInJzOp1WKs3mYjEabehe+DlgS/CGEzDVA9sy0mYELhuuqnBCReweYYyI6psJtxP5lhMKPtSEzNS25WRVyNsJIxxwKHoTdHQrM40s3r6UoRGqorfqkzd9XUFyHG4dur6Oc5ETzoXv3KOVi00NfG2HhRwsw62dHiMVvsWL+R7TK40WV6Hw/bNSZtNOk8jiXkP86fEJ4tYtT2ztk5K31u19ZdHgqPpf8mgvWoX8tAHnoB9p6l1Q+acgpqNUsVsQ/Yvgh4/zVUdZS1KxFGOO1ANfmJHUTUqUX/SOjbwIBp9n0Jv6LYqMyI3R4qefgiiUCmgfl3zLYqHoc4UYYXejEhdPPy731SJj8AUg3rTWkcvdmasXKBy2xO0yMUk0vWkprfG8UjEyPgeDj1jR37JNlo5/RNdW5jEQVxiahPrCzitH8vTZEDEj/uYzQn7AmmJ432RNASdO2d/ywA5hLtTMaDgqpBE8NSYFEf/opyBCnlLTsRy/rzilRNRi84QGmeBYnbdAN4LPJjPGKedvLAjz8eOs7LTpj1pswkPhUshOlQ09KERULCkNYi73ftsCjrx13iXlbsomLQaVt22xJUDBG7wtQt3v3gbEabC1vol7A2DFa4Ao6U2IqJPgswKxtYzG4epbj51XShL1hTYiUrh/VGwyGhs+/1D8GQo2EvXReRYbysAIOtDpC+2eeWUvEVpoUvgZCnYSjSbB9gsFBkg50qi0NlZbFOdF7s3fLOwsy2Fz81zbmK3JtEyR9aCF6iINaBPY0xZzzZkPHM+g94REpQE71jn2iiJtddu4x7+ceP7k7qh+0u79lvsqNTy5SZs56p7nI4lKvjpfn582tvoKBtvLh9eHuj5PG6hBMIe7uGCQyn2zIdv2mVZFb6PC9pn2c9/OfS7oy+vHx8eF5Rph6/Z+2lyMGsZOQKMxalam97d8yfuo/c2oj0RKQRUJmRbZOYGvSegbu4cFdVA1FV5A4IhEO08gFEqzJ+kflGq1WijglbYbEbyMjGVGgavw4hjUI5ME6EmLEPFamh0dD9beuCP8xHIu0TGzUVJh4VhXoi6kPjNf4QIuSqbThKM+OnWXTt/1oe+JkrCHEvkifMB+FSlSFmq1wnGVaasAaSOgCtULpmBd8CqoHoSLhpX6aLczHkiT8aA/9k0mvvEgl+v0275JXUr7xn183MVfRSKiCgvhcO2Yho6zDMuEFWAen6syDevqQ42WwgcH4eqq3pVACgw62Z+zOSk7qLeTnckABp1MLt2BQWCcmrSlVFsgH/vOZQ2HjIZ3hkMvFSBjslGcmmwiFqrM4Vwe4EUoNcMyaEiCnwMDqRPKwc/9AUgwyPzsg3Fn0E/Uc1Ffsu0LCD25nFSIhKi8S/p5gLFuZaOXRAjHnA7OSmHOh9ddrlqj0E8NjqRBMuBL5icSHGUkNdPJp7rtbi6d6gQC+IrIHpykkgoPDsj+aPjhM8gvbbQahoszTlco1sJLPrpu1TpEn4KOh273JC3/i7JTv6P8gdDoGW0zMFQJzrcwt79A96TeTx1heUwcByW4uCyZ6PD6MJq14bBuD9+qi89CIsGZxSEgn2OSgmI4fAHhsIUO8Q4uj+kl7/R/nSWa47OwiD+qoJlfmhMSsf6kia9EobOESvTKIsUmwYy0RKO+gBr6mpo2wRjghDyP/uSKr3ZJqflfKMJ45FY5m6UDF2SBJZyDOBVLYU6rqZC7zJKRj6nvl7/++qsC5JOEH5f0qkS7PEQUaMoV4YymGBomAdYxPKKc4SsG+0T1/e3ff/31r79QbCl5YMn+NZHyoIVv/i9cIGmBEar4VJE0phPW8FEJfvn11//4CwsfF2SmXifEyrfKQwVzN6VLNu5jaOdyCQwiGOsvzkq6Cmt86v3tP5Hut7///hvO3IIXdiVsFKnLNBTWFEVGWKPphYSYjYdrlASsbJTCI2Wvf/wD/uvv/6Qk79LzE1HK6EbKHCYBhomwm+uScsMHWCitvMwZixB//Pnff/JC/xh/2/O2ma6MlMV6dDGsbCAdBrgLRb2tXGmJNArwrz9Ij//6B15c87qrwYytyD1pQctIWWxET9PmQYRFEWMmGmZm+j+/wf/+yfIBUd+i3FYw3GsZ2xkjLHJgjId1bWJyreqEx8xM4bfff4f/Y5UIXurteShx66zpEaHESMOgDo74xKxpqtQIi0iF/8DFP4F/KMjs6dQ0OuD1UmkZ87hNQn6QZR4I7bVkzLlr3P2csUo4zDMeb2wQchCsfSkYkFY4YZjptAZHA647swp5vKAfB9QT0LTqkVOf7YV9Q6hE+ahOyAoJLBlyetlfMhOupeEeDxfSBLBQODYQkjNFvdS7bJZZVai7IpPderqAkpKoqtoFFJaERIDAXeZKUWMWHgQ6thKKvO3Yq0L3hUVDq+p+gztTCvh9ssZlzW+ciBatHnjgsNINwoNFrVBdEpIzpYBPFYeNCin+WezW2yFfC4dEqCXYLGu5gAF7YV2FNq5G2IleW4kUgosa6owtGxYPeCebNTF4xb+mQj2vMxJ6ukJk3+u+DNNiWaHEuqWMAPJjXgla+czOlLXgvE7YhyytVRyz2r4InAADfhsdDs/gDmp6L5H9i89e8idqpeLlGeuEe5qwDpmA9gXfYpXViMiFIY6aN1W2mIEJWvWsWEIpFi8PWN5WPCvwFdPC2WWx4O15iMVTdnkHnAutt4/2Wv9EmrxgSXixVOSL3yz9IfdTPb4slmrcSGvH3valmHnTTa3ydJ5zrcg7iahN6E6gpLXY4IzR1M5oabvAyqVVB7wGl8fejoe0KMPOyA+BnoCicR5DO6V3+MNV4/aEqqVBXAKcwp7OaSj1ZjeayaqUy2jhAINFAC61mrgAbHsCE3rKFEPCtNjo6bzURzv22R0q0EyrxQOtkoJcGqqaqtBlni3nYU1zpqtggRmfp2sLtvmS7tul3YnquFRjG0vo3MFC2Bj1kLRU0uZegbkYChbMp3q6PvSx5DvEbyxeXh5Co34CsBSGB1rFy3s6psk58PjWoWgnRMPMDwLw4cNHBeCHOt8RtZ7PaITH+ufAbn2BJj0YsOVftuLrtXVSvgqdSyTGg0EfZogIgc+fP7cZZHgtKdXzNgRL08088nm6e2XihGRvL9Ft49sMOp2oJB6Vb+nxdQbjcbudwNHhCPcBlI8z+PQDZD99/vwD5qulg/XFX5qXxluZZSCQ2NPlRJNEezzO0W2tRYBytEFu3O4mtPHw0SX63PbabUpxjrTfCpSwaekLlxqtRq3u85WG/orQippok1a/GijTG2pNR7OOaoIz6xynIRopw/v4YjxWEWNiYbU7c3XbRIB1PispqXTQkdzEJL0xi7RF0wVHfk1OdZL7/PkTqB+YfJzPlN6T4YChp9nHDyszzRqN9BVQXZ8u0HUGg/beRjgS+lbC3eH1OdnoD5/I7Vjl48eP7OdM1e+4lwfY+J7rnIk2n587g5M6ue6rbNoASEPXh4eHDzz692ZzjchEOeP6zGg2mtpChWuciXbuy42W22V3OzgS8jQqqIckN+ewOhWq/NTTz0js8Wfvzu/YTb6weN7GRu0xEzg3372LmnnL8d7WcJwweQflK7g61OX65uGKUEyint/cPJyf688n3weoUyLmO3RJdO3E2+gYYfbhHK4Bbg7X5Hop+hNXd5DNqoH6FwDqmHvogLaHZF6l+3Y6RgjXN/CAiOuE6/JwhxMw8cV8GiS62cE2IROvGLS3n3dWqQN6UfXwQZuKjsL0iDr8EgO1o+ySKl+zzXfTkSQyKjqY68NzON+oO3CDkARHz2alPV5n/E7bXAn60sMbcjQqPNiwXZ1TlFDvztlEdYNwjyCxBFj7TgPaL029L3/7BI6daQhsEB/g4eHmmuKIeoe/nrtDuMc02TbjMePcyXsn9suHV6ShaxvEh7KmSsp7Dg/v7t4bCbeQE6N1fuHcs7wzXF+zSYiIVxZCdLPcTu9UegmN1T3CPYN1JnaHh5LIwxV3JIioXpsIr0HFbOD6SkX75IQZlwm5+nb8zokJJpp3DA0jh9mlXl0dqjcIek7+lgizrhJGfbndqk+TRIK+SqpePdyga0FGQ37zcHd4h7MTc1KapPhvyEXCaDTnBh4X00n0OB9RYdek1geV1Hh4rrJ4eeUu4dg9vr1EGoLBx9hcmWHt9MIKpXOmtRu4QTXiD+aEMIWF/olbjD73+NBMk/AhuJIXfk+EMouIXG64a8XKMNl3aRQ+l94X+U76+2l4MRAG6cCyjMqz8RuM+deHOiCk9pPJiStqdIsQ+ZL7eSgbAYOPsx5Qr+JqGTyub66oAaDCPkrSrtH2xeISYWKSTO4nAZ5NhKeKApl9XtlfPTxc8cp3+DhTIckQUy4MxSXCFI0Y4NEEGHxGwnQqbbjnjvKCl5zOypwQZfduwRXCBAGmMjAPWghRWaFUAIb48BHlWTdeWBLu73wwbhAm+jTeFIAFMEjn6YdSScvspGN5VoRvbre9Jm4Q1vmkgplVhWXgVhozP/+hB6AD7u/co7pAmEixoeatII/stnr5JKgW8liZosUSccdT0QXCCVNhKmv2M88K3fIKnWbWSk4nRaoGwsluh7N7Qk2FSPhsoihDbEbTcH164jRMrwh3PRN3T3iS1AmX85DuZxEL9uj+avuBtekZpLa+gTC52/HsnnCiuUW6ecnL4/Pph3kZynNUKJ2vk8QY8sECGEP1BvYNhLudiDsnTPT1gSIgj+oUF+EF9ZhG1abh1KpCoyv9lgiRBe1xVqY5GKRbWEAATTGlWqehwkKIkXC3A9o94WqwKpQfn+H0md/LK8O5rYRMz0Yj3d/3uqeZLNOT/dXRO+nAfsqW8AWUnjFW7L7CcM2XMpwk7R5KZ5KpJUIqZCJEEzUmpS5MQzfiYd8w3BQT4xNZaC35yHwV1RQqdp+YupDT1E0qsQrtBR/GHh9jdFNPhTZomNzMzlXoYl7qIJjTzFgDrjefqUMsp1Qz4M7rfPdqCyfBOHmKUR9TgFO62V7I8gHsvJHhXn3oqESy0/kzzNk5bXmzwnduo27V+JsRk/rWjFAg5TqgS32axGSjoaaSgWw6o4dIA+CXb1ZYF7d6bSepjYz7qdS6P3KnYepaR5j1E98krmjQ1Z733mT/DYzJlEvrC+4RoiTq/S0V6VZLf89lQpqPk9SrkMlkarLn2vKay4R7DBI16UhJeCeJN26be4u4T7hHU7JupUwy2U/1Jydb7ud8r3wVQpIE6TJFi2gUKfr9yaR+srer3Wyb5KsRkiQM8tX+p1+VUIj8PxHYUMvJXlEJAAAAAElFTkSuQmCC";
    return Drawer(
      child: Container(
        color: Colors.black12,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountName: Text("Minh Ngoc"),
                  accountEmail: Text("ngoc@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  // or Image.network(imageUrl,width: 50,height: 50,),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
