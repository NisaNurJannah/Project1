import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data tentang foto dan nama
    final List<Map<String, String>> data = [
      {
        "Nama": "Mawar",
        "Harga": "Harga : Rp 10.000 ",
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN6FZ8VflPk9v4x9u1r33Z7ac0YMrcol37iw&usqp=CAU"
      },
      {
        "Nama": "Melati",
        "Harga": "Harga : Rp 18.500",
        "imageUrl":
            "https://i.pinimg.com/474x/e9/e0/bc/e9e0bc48c8e729d9daefae50951c4d58.jpg"
      },
      {
        "Nama": "Lily",
        "Harga": "Harga : Rp 13.000",
        "imageUrl":
            "https://i.pinimg.com/564x/4e/fc/e0/4efce0c4d66214294989f783f54d7c92.jpg"
      },
      {
        "Nama": "Tulip",
        "Harga": "Harga : Rp 33.000",
        "imageUrl":
            "https://i.pinimg.com/564x/db/77/6f/db776ff1ef1f1c5160027411c2ef8a25.jpg"
      },
      {
        "Nama": "Carnation",
        "Harga": "Harga : Rp 60.000",
        "imageUrl":
            "https://i.pinimg.com/736x/d5/61/5e/d5615e2c323afdfa4c2a03b0349ebae1.jpg"
      },
      {
        "Nama": "Gerbera",
        "Harga": "Harga : Rp 15.000",
        "imageUrl":
            "https://i.pinimg.com/564x/51/f9/ac/51f9accf93b4844fd985877123edcabe.jpg"
      },
      {
        "Nama": "Matahari",
        "Harga": "Harga : Rp 12.000",
        "imageUrl":
            "https://i.pinimg.com/736x/16/65/8b/16658b2f6e3240b3fd9a20627621df5b.jpg"
      },
      {
        "Nama": "Gardenia",
        "Harga": "Harga : Rp 57.000",
        "imageUrl":
            "https://i.pinimg.com/564x/72/f5/95/72f595d332710c958f05f74ce6bb3d3f.jpg"
      },
      {
        "Nama": "Anggrek",
        "Harga": "Harga : Rp 250.000",
        "imageUrl":
            "https://i.pinimg.com/564x/ef/e4/7d/efe47dab9e586233fa3129281296b3dd.jpg"
      },
      {
        "Nama": "Sepatu",
        "Harga": "Harga : Rp 14.000",
        "imageUrl":
            "https://i.pinimg.com/564x/03/25/af/0325af47ff8612532bead2119b29f64a.jpg"
      },
      {
        "Nama": "Geranium",
        "Harga": "Harga : Rp 13.000",
        "imageUrl":
            "https://i.pinimg.com/474x/9b/16/bd/9b16bd87b5d98136467fb1c71536763e.jpg"
      },
      {
        "Nama": "Kemuning",
        "Harga": "Harga : Rp 15.000",
        "imageUrl":
            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYYGBgaGBwaGBoYGBgYHBgYGBgaGRgYGBgcIS4lHB4rHxgaJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHxISHzQrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NP/AABEIALcBFAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAMEBgcCAQj/xAA9EAACAQIEBAQEBAQEBgMAAAABAgADEQQFEiEGMUFRImFxgQcTMpEUQqGxUsHR8BUjYnKCkrLC4fEWY6L/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAkEQACAgICAwADAQEBAAAAAAAAAQIREiEDMQRBURMiYYGhQv/aAAwDAQACEQMRAD8AxqeRRTGFFFFaYx6phnDnWsCwtk4O8WRLlX62cVEInIaEqtG8g1KdojIxkN7HmJy1AHlHNM9CzJtDqRDeiR0jBhb1kethwdxHUvo8Z/SBDWRcMYrFsFoUWYH8xBVAO5c7TUfhXwRhXw6YrEIKlRmbSr7ooVrA6eRO195qVTEKgCqAByAAAA9AI5SzF8P8FcURd8RRVrcgHYX9bD9pS+JuD8VgWtXTwn6aiXZG8tVtj5G0+m1xyqrO7BVUEkk2AUC5JlVw3ElPH0XPywcOzPTAcXNRVNixH5bm9hzEVulYVs+bYoW4nwKUMVWpISURrLc3sCAbX62vb2g6hQZ2CqpZjyVQWJ9AITDUUdr0GRirKysOYYEEeoO4jUxhRRRTGFFFFMYUUUUxjpZIpSOskUo6MTaUmUkvIdKEsOIG6MdpQj7U7TyjUvyGw2v3P9I7e8WLT2jWmjqgkkrGKZtHQ4j2hbHbxRv5onk1oGSM/ij1Sgy81IjVpOxx6lTvJAw0WFhFFiOWxJOgW2GhfJqPhM4enCGSp9QhbISk2qPWpyNXpAwhVFpFeKSQLdLTm0mVUBkZlmHTOBOlFogJYOGeFMRjWPywAi/U7fSPIdzDQavotfw4z3/LbDk2KEso/wBLHf8AX95dqmM2vIGT8OnL6JGhXa13qDmb+R3AEaR7km977geXYTnj5DcnBpqvvs64wqK2B/ihmzU8DoQ2+a4QkfwWLN99IHvBPA+eIMDoH10tQ0AXLM7EppHUkm0LcT5HVxuGami6qiMHpqvUjYgk2AuCdzDvA/w5o4JVqVrVcRsSx3Sm3ZF6kXI1Hfna17ToX7xD0ysZF8IHqH52OrEMx1NTp7nc3IeoevkB7zT8rybDYNbUKKUx1Kr4j/uY7n3MdxmIVB4dgO3KRvxOsaSfSOmhXZWfibw4mNw7Mij59NS1NgN2A3ZD3BHLsbT55poWIABJJsABcknYADqZ9OfNI2PSZvwlw8qZxiGYDRQOtARtqqbpb0Bb7CG0zU0j3KPgxUegHrYgUqrLcIE1hL8g51Dfvbl5yj8U8I4nAPprp4GNlqLujW7HofI2M+mcJjNR8hHcdhaVZGSqiujDxK4BB9jyPnNZrPkCKaH8RuBUwn+fhn14ckBlJu1Ik2Hi/MpO1+Y635zPJgiik6lldQ2OmwPViB+h3/SO/wCDVOhU+jW/e0VzinTYLQ3luXvVayiEsZli0tmPi6jtJ2SaqCnUFDdPEp/YmNVLFizeNj1PIeg/rOeXM8tPQk5paRGw9M2vbSvc8z6D+ccd+g2HXf8Aee1WPM/eQsRUvsOX7xblN7I5Nkj8YEUhWufe3rvGf8RfvI2mP0MKTKRVdBukSaOOc9pLSm7G+5j+AwIvvLThKCBDa14ZPFWKm5OioFmihvEYAajFBf8ARaYAxNQ9bGDa1BW6aTCJW8ZelHDGbRBWgV85JptPOU9tF9lM7WyRHcFX0P5GR0MTiPRNhTEP+sjNGaWJ20t7GdlpJtxezUmNuI09OOtGyYylZqLRwNwY2Ncu5K0EPiYc3P8ACv8AMzc8HhadGmKdMBFUWUDylEyrMAmGprSOlAgtbvbcnzvJdXNnCa9XIb38u8fNI6YQpBmtWqlPGADvspuLdP0ldfwPy2vt0sf6QM3H+HLgOKg0nZl3W/oDcj2hbC5tRr3enUVxcXFvo9VP97Tn8l/rl86ZSMk3ouWWVaSKFGxO5J/Mf76RzF43baVl83DbWG23nYefedVMwGkG+3luT5Dzi8Xlxn+vsLiSsaGqIyq7IT+ZQCRY35MCINyf56akrMHIJKVFXTdT0ZehHLbnAuD+JNH5woLhq+otpGrQpJF+hby7w4md4bEOURwKqHxI3hcW6EddjzFxOiqX9Neya9PWxFrjmZBp4cU61R+tTQO99AIH7x3EOxB0m22xv17ERrB1brsNTAbjkeZ/lf7Th/NyfmcXVV/pWo0FMKwQMbmx3NzcA8+vISrYbjEYuu9GjRrVEVrfMQKUNuZYsRYX5b79p3nzVcQyYGjdXrXNV1N/lUFPiYnu30j1MvmR5LRwtJaVJAqqOg5nqT3J7zvgk40Rl2ZR8S/xK4couHf5RKmpU8JUBSGAspJG4FyQBM6yvCaQHYeJvpBHIfxep6T6Vz/GrTpuzWKhGJHQi3L35TA62H3vYDsBsAOgA6CS5uRQWK9k5N0MM3vPUPtONwZy7CctEWxysxI5xj5luk5Z7TxgZSEL0I2M13LThKd5NoYMsbCGMNlwXnvOqMPgrlQJw+XdTCVLDaekJUsNeTEwojOo9i3KXQFqPpHLeOUcYVjmaoAQot3MG1WESVSjZbijim2Gfx4igL5s8k7GpHLU95zaTquGHRo0+GMZciJOLBzp5TjTJr0z1EbenCppmGFnUVp5CpUMNus8SsRsY9a8fweE1Nyj6kjIjkERapbEyLUm6m3e3I+shZJlITHUErLqQvuD9LWBIB9wNusm4tMfFjWRZ29PwBS6dlBJX0tLXRyzE49AEVqNEncsDrf0HQTT6WOpqAFUKOgUAD7CN4nNbDaPUY7ZaMXVWU/BfCXDBR82pUduukhR+0ZzXhyhgAq0AwD6ixZizErYC/YWb95dMJUdx2B7/wAhK5xfTbQCdwDz8iLfvaQ8pZcL0GKSeitU69pNRy+wFzzAH6wAasM5FigtVGPK9j7gj+c8fiSU1fVlboKpk7tZ/li43GoC9xy36TJ87yLHUK7Yh6RB+Zr1IdQU3uPp3t05T6MwddGEHcTY/C4WiatcC3JVFyzseSqL7nae/CCirRNyb7KFwnxIMShVwFrKLkDk6nkwvuDtaxvyhzL69rjqSw+/SP5HwnhK/wAvHCm1JqiB1VHYAowuuscr2sdre8tOGy2jRJYL4j1Jufa/L2kZcDc1JDKWiqcUUcRh8HUr0SA2kFyo8Q6ByT9QW9/Lfzg7hHPcStBHrVTVL+LxBRpQ/SBpAueu/e0u+YYxWUoRdWBVgeoIsQfYzOamV4nB0To0YlFvoUhkdFubDqH9Nj2lJJpVFi3u30O8e50ugU9dtbA27qNz7X0yjrimGoKwsVsSbG4PTeCcbjHrVC9Q3YnlyCgclA6AR1LEec5uWG7Yilb0PVkItyFxfb+dpFqLbe87TWx5MfQE7e07oUS5v9h/MzQi26IzpbQ3SQnciEcLgNW7bCPUaQHPnJJqTotR0iPY4lNVFpyakjVcYg/NfyEhvmd9kW3mdz9oVnLoePE2E3xGncm3l19pHbMW/Lf1MGq5O5N44KgEquFf+tl48aiSCzHnckxDCMY0uKAMIJmC2k5wfUQY2yN+Dikn8UIpP8ExsUUeljnXkx9zeEMPnrD6gCPLaBLz28u4RfoZxTLXRzlG629ZKWsp6A+kpJM7WqRyJHvJvgXoV8a9FyNJD5Rp8KOhgrJ6hY+I39ZesBllFwNS79wSIr4ZL2LgVVsK3SHODsI1XEJRA+rcnoqjdm+0LVOFUO6Ow9d5c+AsgXDK9Vzqepspt9KDoPU7+whhGWRsGi1JSSkgRQNIFrWvfuT3Mp/EOTIxD0/CysGAsSNQNwQBuN5bcbXQqx5kAkW62HKVoZhqFthcnxEHnbrE8jyY8UlFp7/4XhC02M/iCy3U2J99JGx2PYgySu5XfbYn0tcz18OpOuwJtbV5f31nFIEDe2xsDfmDc3I6QZbsYsOAZmHlA3Ga6cNVY/lR233+lSf5SQM3pIVpl1VjfSuoBmtuxC8z7QfxLjEfDVhqBHyn/wCgy8mpRpk0jNKeJDgMORFxJCY4J4ibAG5J6DnKdl+YFLox25g9AeoneaZkGUqDfUOnaec/EedegqWjZsozO6gg7esDcTgYvUjflBFMn8rdT6EixHa3aZvwzxO2GOlrtSJ3F/Evmvl5S4VuKcGKbVFqBm6JZg5boLEfrynZKEqSRtMsPAXExbDDDv4Xof5ZB56BfQfYDT/ww/VzEnrMTyXGYg1hVpi7m91ts6ncqbdPPpYS70MViywaqqIlj4FNz5EnmfuOcaUpJCxZbVxW/eLGYvaxg3AZghABsG6b8/TzjeaNqtY2F95PKo5WV70UPi3LwlX5iiwcm9ujf+f6wrw9w0GUPWHPcJy27t/SFsbhNezJsrBlPME2NvtHcA5ZrXvbYwR5YzasSXFTsL4fBIosigDsABK1xTlgS1VQFubPYdTyb++8uFIgDaQc++W9F0dlAZCLkgW22PlY7+06nG4iSgmqMrxGaomw8R8uUGVcweobE2HYbSA0cwx3gjBInGKCKmwipmdMvhjayy0iyVIf1Ruo5ndMXjj0YjkLIG1MQROqWLixNCQ2S0ykTsOU8VtFBKObRR8g5AyKKKKWFFFFMYk4PE6DLhkmcXIAMo0OcPIdV/OBgZruXPqAl5yvKgFDOSzW2FzpXyt1me5FVA0+00HH57Rw1MNUcDbl1PoIsaezMJ1FsPCo+wlezcObAKq7+K68xbt6yh578XKlyuGpoB/HUu1/RVI/eBsHxfnOLYii2wNmK0qYQeRZwd/K94J1JUBSV6NAo1LXUm1jsdhfbfw+vv5mOYKmzuKY5kfVzBUd+oI8+f6wbwzkuYVWtjalI0wPFpXxsegDKFA8zYy84XAUsOPAltrE3JJHmSZCPBvXQ7kZfxrk9n0sTrTxI6nSbHqD03H6Sr53j8aitSd9SEFSwRbsp5hmAvND+Jl3wzVEvrpb7bnQ2zfbY+xmb1uI1rJZ1COBY/wm3UdvSUXGk2n/AITkyrVKd9xy6xiqo6R7EYiznaeMQw2Nu8amnsXfshkTgiOntEFj2PZffhsAarjroFvc7/sJpOJwd1mXfDd7YoDvTb9GWa5WxAVdyAPMxFG7NF6KjjaGg7iePiCU+obb79QI/mGd4Zm0CojOTYKhDEntZbxrF4FwhK7G3K23oZy8vG10VjJENOIUI0g3Ij+DxFmBIsOe19++3XpAiZPoIqaGVtgFBGkf6j1v7wlRoYhF1oqvb8rbE+42/ST4fHUZXEMputhp8cz7IDbvb9oxicoSqhWouq/fmPMHoY1lXFFF20OhpuOYYbXHPxdPe0sFV103Fp6Cj9ZHKzEeIMsOHqlDuOanup7+fSDKLWaW3ixlrYm2qwVQt7X3uSf3Er2Pyp6dm2ZTyZeXv2hTETV0TqD3E5qLI+EfaSCYchsj2g28nq4MGiPI8R9gbO8Ql4Pq0oRLXjDpeMiTIPy4pO/DRQWjbK5FFFHOkUUUUxjuktzLJlVA3BEBYFLtL7k+EGm55dYsugE7DYkotyZbKNZMSms6XU/UDY2I5qwPaZ1mWKJaw5CFOC8sStiAaq6qSbuOjsb6EI6jYkj/AE+c5c8U2a90XbLMmosGZEppTU2d1VQLjmFIG59IBz/jNcOPk4PDtTtcCrXpsnqUpMAb731Nv5TQnxugBadMBQLCwFgB0Cjl6SDisaHUrUQFT0YAg+xnM/NxfQzjor/wx4gapTrrWqM9UVA933JR0AFugAZG2FgLiWnFY/UNjKVVy+lRqitRAQ7hlHhVlPNSOXn6gSemaoxNibjmCLWv+/tLcfmRkqAo12FqiLUVlYXVlKsD1BFiJhma4dadapSLBtDsodSDcA7G462tfzvN6ydA4u3XpM++KvCNOlpxdJdCEhaqKABqP0uByW/I+3czpSyVsWSszjE4UWuGDDy5iRaa2PPaOYjEkiyiyjtIy3HSMk62BJ0enZrnlJINMJ+f5mry0aLfe8S0weVx5Ty5X8oI8xf3E12GwrkuPbDVw/RbqxHUMOYv7GGswz/5isAzOWBF25AEWNhKhTr72PPvJiGK19JybWkXPgbLg9Q1WG1PZf8AeRv9h+80oUVZbSr8L8OYqnh1ZqRUG7WJUNY7glb3G1tjvC9HGWNjcEcwdiD2IjxaWmPFUg0uCRlGwjTYJU2tbynOVYvUbdjf+f7wzVro40uPfqPQx7XYaZivxGy806i1k2D+F7beIC6n3H7CVvB8RYimNKuSv8LeIfrvNd474VevhyKDB2BDBHIUmx30tyvbobeswx1sbHYjn5ESclsm1TJtLEBmuTYnv1PrLdgcLqpHa4tyO8oUtPC+dqn+TUNkbYOfy36NfkPOJK0rRlFN7BT4fQ5A5X2nVpNzKhoc73FzY877yFUqARYytGxPCI01cCRcRipCZyZRRbCohVsZGvxsHCdqI6RnFBIZlPIP+XFBig6I8UUdo0GY7COUGopOfLmAvYyGwsZjE7KR4xNFwTAUyB1sPuRMzwtTS15b8rxpIta+0SatC+xVqXiJ7kw9lGP+VhrL9RrMSettCBf+6BsXix6k/wB7xjDl31qoIUjduWlh9OnuQefkZxODknE1pMuWGzg97H1hBc1Yi2r+cpyYdkS7PsouWawG3U9pKyfXVpfNB0JchSwuXA21AdBfv2nHPw+S9IrkmGcxxIYG+x7j+krq4jS4u2x2/p/fnJFdiTp12ubaiNh7SBmeSXZTra9rq6XsP9yHbr0t7zcXEozxk6Zn1ZfOGczJZVO23e/L0luzfBU8Vh3oP9LoVvtcHmrC/UEAjzEyXInq0SgZvmWa2oeEhCLDUp5m/wCk0akmIr0z8lgnRXcXW/mLgkek9PjlSx7Fl9PnzEUPl1HpOLMjsjW5XUkH22l34C4HpY9KjvWZFRlVdAUlmI1NcsDyBXbzkrO/hnjqlRqzV6FR3N2+pL2AG3hI5AQz8Psur4SnWSshRvm6huCGXSouCNjupl6+iJbO8Z8Gkt/kYtwf/sRXB91K2+xgTH/CfGoL02pVvJWKN7Bxp/8A1NG/xYjrPTnDd4jcRsT59zDLHpu1OqpR1NmU2uptexttyIPvD/w0yg18wpI26U71WB6inYqP+cp7QdnmIapia1RjfXUc+2ohR9gBNB+Dgp00xGIdgGZxSUdQqAOx8rlx/wAogUvvQiVujWMY9lmdcc1hTpHEAboyq9uqu2ketiR+stuJzQNspBla4lwq18OaBaxqMp2FzoR0ZyBceQv/AKhBKSKUO8JANQFQndwGt1CkXS/sb+8k4nEWNgY42IVVCLZQABt0AFh69oNqWvsb3kH5EFNQvbGUXVnGe8QDD0HcnxWsgv8AU5HhH9fIGYgabNudyTufM85ruP4NbFNrqVmAH0IigKo9+Z85TOIeHWw1TQTqBGpWta4vaxHQj+k63fs5pt9lVFA/3eL8P/doY/DRtkVbluSgm3U2HKI9E4tt0gd8xlG5Ont0kStiSZziMQWNzsOg7RiOo/S8Y0ImeiKegRhhCPos4RY7AycmeWijZaKA1EcCXThbL1YC8pgl04SxoBF4ZdFGWuvkCsvKVPG8MEPcTTcNVDLtE2EVukmpNDUZrR4aHaG8syS3SW9sGoEbplVMbIGJXcTwzrrLZSqBbu1/qYnZVHQ2G58+8IDKlWyqAANgB0lgWsCIJ4kzVcNQeobarWpqfzOeQt2HM+QgxV2LVGf8dZkAfw6H6bGofPmqe3M+0veVYMLhaKna1NduW+kE395jFWoXcszXLNdmPUk3JmyYKo1dtKDTTSwZjzPZVHIesd/AkDFYdDcC59JC0MCB035ncdrW2lrrYPbSosP75wZjsIiKWd1RQLkkgfrIT4VL0MpA+gFJVL7lgBvY6ibCxAI6zXaFPRTVBcBVA6dJjPC2ZrXx1JaNItTV9T1H5+FWKkDp4gPPyE1zGYt+gUjyjcUMEwN2N4iuYNqDn2nT178xaBcZmKWIe6gnSddwpvsNxtY/zgnOhkiQMK5dtbBU5oeWwFzqN/7tGxRJF1YMtrgg8x0gqpna6CKbo4Hhsra7W6dZCynN3eowddwBYLzK7gBunM7TnzWQbAScC4511CmovvY1E1XO+9tv1nVPhjNqVyiVAbfkdCD5EA7nzt1mp4ZyRteSUrEd51UqJ4mXcK5HjvxRqVUrIQDrZ9S6j+VTf6huTt2Es+a4x1PhFgoIZiQFuLkKBzJ572tv6y6riyRvf7wNmuTpUvU0JqA21KGv69R6ixkuXiyX6saOuyu4Wvq3Y3P99ISwdIk7ADt6ecgnUrWRbC21+YPUXGxHS9r7SDnXET4dbvSqaLjx0ypsQfzA2I/aS4uBJ3WxrNCwNGw3MpPxNo2+U3m639QD/wBskZBxtTxCMVDDSQGDAA7i4NgTsd/sZF+IWNSpgyQfErofudJH2adzaqiM1aZneIxaoLc27f17QJiHZrknnHnWMVnFolE+ONEFop4TPZQsIR1FnCiOgTCyZ0Ii4jbvGCYKsyiOlp7GIoaGo9hrImsYFk/Lq+kwPoxqeTYo2EsFOvtM+yXMul5asNirjnIvTHQUq1toMr1zeJ60Zr8rxZJvoJxUzYICzGyqLkzOeJc8bFVNRuEXZF7DqT5mWnMFDBlbkwsZXa3DhIvTbV/paw+x5SkNLYkrK+FmyfDuqpwiLe5BbVc3N9R/lb2tMoqYZkNmUqR0MsPBOcGhWCMbI5sb/la2ze9gPtKpk7s1jNMYtNC1ibAmw3JsOQHUzE85zirjaqjcAsBTToCTYE9z59JpOZ1md+tl2UefUyqZfg0/xPa3hUuQOjEAH/qv7wKVuh6pFwyDJFoU1Ref5m5Ek/UYNxHF60sRUw7koEZQjgkg3VSQ3bc8+Xp1ttNhb2lTo8FLVxNTEYg+BnvTQfnGkC7nou3Ic/SFx0ZWgwcwquhKPqJHhN/DfoSR0gfLsqZdTVar1mNi+s3Xw77KeQ95bUwgChVAVALBVFgAOgA5RkZfdjzsbXF9tuwnNPjk00mOn7AmNrh12AAXqABt2FucjZUgpVioUkEjWxN7sAdvIC59yYdxWWG91Fj022G972jFTC6Hp35s59zoZv5GQ4PHcNPf9DKSbtFho4wAWtHfxAP/AKkN6PhDDpzgjO3qGmwpOab28LCx387g7TudpCJosP4kCLH5qlKi9RzZVUk+w2A8+kz3hjiEuTRrtauhI8W2sDz/AIv35iCuJ87fEuuGpG6awL9He+3/AAjn+vQQJgk1Vmi8K4tcTh0cgXI8Q7OCQw+8n5hliMhVgCCLb9Qehld4Morh6bU1ZmsdRLW+phY6R0G3nDWNzKwteZSjVhSZiefYN8FiWWmzID4kIP5G/Ke9iCN+wkPEZxWqgCpUZgDe2wF+9lAhn4gY9amIULuUSzEfxE3t7C33lVvGuxZfCZ83aRax3nqNO6iQdMVaIwnQEVo4ixhmz1VidrTpjaRma8C2LFWeEzwRRRih7FPIpjCnqtaeRTGCGCx5Rpbsuze45ygydgcUVNosopmNFp4+/WSWxVxaU/BYrfnCn4sd4lUEk4kXMm4KhtBdPEAmFsNXFpkYWY5cjrZ1BtyPUehlJx+XaCd7j9ZcsZjABKlm2LveNYrimepxXXppoVlO1gzJqZfQk2PuDG+FMw04sMxJLgqWY82JDC/2t7yvVGuZyDGSMkbiuN6X/wDUJYTFht5jmC4orIAraXA6tfV/zDn9oUyzjR1qLrVRTv4tOrUPPnv9otMa0bIji1zH6Cra/eVSlnKFPmFxo06tV9rWve86wfECuisp8LKCP/PaFSQKLW6KZU+NMUtFaNXomIXV/tYMrH7MT7R188HeVPj/AB4fDWv+dT+82SekZo0ahWBXyIgzHUwSZV+A89+Zh/lsfHT8NzzKW8J+23tJvEOfJQTU25OyqObHn7Dzmk7AioceYVEdHUgOwIYdwtrN+tv/AFK5RxjU3R1/KQwv5Hkftac5lmD16hqOdzyHRV6KPKMVB4VPr/L+sVKhH2XP/wCcgAinR0k7ks99/YbiV/MeIsTUPicgHoo0/rz/AFgpY4BBpBcmcWvOCkdCWnpEdNMWyNyj6vtOGWciZoa7PHG8cQT3Tedou01WarI9UxqP1yJHvGoZKhRT0CT8Nl5bcwN0CUlHsH2ih9MsW0U2Qn5ogCKKKEqKegzyKYwTw2Kj7Y0ieRRGEVLMTeEqWam0UUDMMYrMyYDxNYsYooYgI8UUUcx6DHUMUUDAyStdwppgkIxuVvsSIyGZeTEehI/aKKBCnQuQSSbggXub9esjkT2KZezJ7CGT5i1GoGX0IN7Ee0WcYxqlQu5vsLDoB2A6RRTewkESQBdD5MPsQR/IRRQMVnCx1RFFEYGexWiimQjOWWNMsUUogo81Rp3MUUy7Ko4vPVEUUYLCuBwQ5mFKaz2KTOSbbY9piiimEP/Z"
      },
      {
        "Nama": "Alamanda",
        "Harga": "Harga : Rp 22.0000",
        "imageUrl":
            "https://i.pinimg.com/564x/1a/ae/a0/1aaea0069c2b36b1d9885d6235a67166.jpg"
      },
      {
        "Nama": "Anyelir",
        "Harga": "Harga : Rp 60.000",
        "imageUrl":
            "https://i.pinimg.com/564x/3e/a3/69/3ea369192c7891a60d34a52359080c6b.jpg"
      },
      {
        "Nama": "Azalea",
        "Harga": "Harga : Rp 16.800",
        "imageUrl":
            "https://i.pinimg.com/564x/82/50/d9/8250d983aeb3bffb925157c9022dae6e.jpg"
      },
      {
        "Nama": "Bunga Apel",
        "Harga": "Harga : Rp 13.000",
        "imageUrl":
            "https://i.pinimg.com/564x/c5/66/92/c56692b6cef8315302ffaf3372acbcc2.jpg"
      },
      {
        "Nama": "Asoka",
        "Harga": "Harga : Rp 87.500",
        "imageUrl":
            "https://i.pinimg.com/564x/c9/e8/6a/c9e86a64b699a523caeb5e3d40296683.jpg"
      },
      {
        "Nama": "Petunia",
        "Harga": "Harga : Rp 10.000",
        "imageUrl":
            "https://i.pinimg.com/564x/77/d1/e6/77d1e6cf0a0e57ae529bae2dabab9df1.jpg"
      },
      {
        "Nama": "Angelica",
        "Harga": "Harga : Rp 15.300",
        "imageUrl":
            "https://i.pinimg.com/564x/d9/bc/2a/d9bc2ac18cc074f166b665e8da7edd26.jpg"
      },
      {
        "Nama": "Alyssumm",
        "Harga": "Harga : Rp 3.500",
        "imageUrl":
            "https://i.pinimg.com/564x/b1/06/eb/b106eb0315e2cee8d59945f3e4a96013.jpg"
      },
      {
        "Nama": "Dahlia",
        "Harga": "Harga : Rp 10.000",
        "imageUrl":
            "https://i.pinimg.com/564x/54/f3/17/54f3170a02c353070f10b66e1ffb5290.jpg"
      },
      {
        "Nama": "Daisy",
        "Harga": "Harga : Rp 36.000",
        "imageUrl":
            "https://i.pinimg.com/564x/f9/b8/53/f9b853794e41b1331a36e868d862cad4.jpg"
      },
      {
        "Nama": "Lavender",
        "Harga": "Harga : Rp 14.900",
        "imageUrl":
            "https://i.pinimg.com/564x/5d/ad/a5/5dada5207e1963cf5391fdf6ff9d5526.jpg"
      },
      {
        "Nama": "Kaktus",
        "Harga": "Harga : Rp 18.000",
        "imageUrl":
            "https://i.pinimg.com/564x/10/6c/ff/106cff44e27a35ef1f4f1a2d91c81d83.jpg"
      },
      // Tambahkan data lain sesuai kebutuhan Anda
    ];
    return MaterialApp(
      title: 'Project Flutter',
      home: Scaffold(
          backgroundColor: Color(0xfffe96df),
          appBar: AppBar(
            centerTitle: true,
            title: Text('Flowers Market'),
            backgroundColor: Color(0xff9d0941),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      item["imageUrl"] ?? "",
                      width: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                      height: 50, // Sesuaikan dengan ukuran yang Anda inginkan
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    item["Nama"] ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Menebalkan teks nama
                    ),
                  ),
                  subtitle: Text(
                    item["Harga"] ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Menebalkan teks nama
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
