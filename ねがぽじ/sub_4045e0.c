int sub_4045E0()
{
  int v0; // esi
  int v1; // eax

  v0 = 0;
  while ( 1 )
  {
    if ( sub_4045D0() )
      sub_404070();
    if ( dword_471B10 )
      break;
    if ( !sub_4045D0() )
    {
      v1 = sub_403F60();
      if ( v1 > 4871 )
      {
        if ( v1 > 5121 )
        {
          if ( v1 > 5377 )
          {
            if ( v1 > 8200 )
            {
              switch ( v1 )
              {
                case 8201:
                  sub_408F30();
                  break;
                case 8202:
                  sub_4091E0();
                  break;
                case 8203:
                  sub_409250();
                  break;
                case 8204:
                  sub_4092F0();
                  break;
                case 8205:
                  sub_409390();
                  break;
                case 8206:
                  goto LABEL_203;
                case 8207:
                  sub_4128A0();
                  break;
                case 8214:
                  sub_412F40();
                  break;
                case 8216:
                  sub_412F80();
                  break;
                case 8217:
                  sub_412FC0();
                  break;
                case 8219:
                  sub_413020();
                  break;
                case 8220:
                  sub_413050();
                  break;
                case 8221:
                  sub_4130E0();
                  break;
                case 8223:
                  sub_4131B0();
                  break;
                case 8226:
                  sub_4093D0();
                  break;
                case 8227:
                  sub_4169F0();
                  break;
                case 8228:
                  sub_416BC0();
                  break;
                case 8229:
                  sub_416A60();
                  break;
                case 8230:
LABEL_99:
                  sub_402810();
                  break;
                case 8231:
                  sub_412E80();
                  break;
                case 8232:
                  sub_409470();
                  break;
                case 8234:
                  sub_402800();
                  break;
                case 8235:
                  sub_409620();
                  break;
                case 8236:
                  sub_416D10();
                  break;
                case 8237:
                  sub_402430();
                  break;
                case 8240:
                  sub_409770();
                  break;
                case 8450:
                  sub_419390();
                  break;
                case 8451:
                  sub_419520();
                  break;
                case 8452:
                  sub_419650();
                  break;
                default:
                  goto LABEL_262;
              }
            }
            else if ( v1 == 8200 )
            {
              sub_408DA0();
            }
            else if ( v1 > 5644 )
            {
              if ( v1 > 8194 )
              {
                switch ( v1 )
                {
                  case 8195:
                    sub_408C60();
                    break;
                  case 8196:
                    sub_408C70();
                    break;
                  case 8197:
                    sub_408CF0();
                    break;
                  case 8199:
                    sub_408D30();
                    break;
                  default:
                    goto LABEL_262;
                }
              }
              else if ( v1 == 8194 )
              {
                sub_408C40();
              }
              else
              {
                switch ( v1 )
                {
                  case 5645:
                    sub_401A20();
                    break;
                  case 5646:
                    sub_401B90();
                    break;
                  case 5647:
                    unknown_libname_1();
                    break;
                  case 5648:
                    unknown_libname_2();
                    break;
                  case 5649:
                    sub_415A60();
                    break;
                  case 5650:
                    sub_415B80();
                    break;
                  case 5652:
                    sub_415CB0();
                    break;
                  case 5653:
                    sub_414670();
                    break;
                  case 5654:
                    sub_414780();
                    break;
                  default:
                    goto LABEL_262;
                }
              }
            }
            else if ( v1 == 5644 )
            {
              sub_4159A0();
            }
            else if ( v1 > 5635 )
            {
              switch ( v1 )
              {
                case 5636:
                  sub_4154F0();
                  break;
                case 5638:
                  sub_4155C0();
                  break;
                case 5639:
                  sub_4156A0();
                  break;
                case 5640:
                  sub_4156D0();
                  break;
                case 5641:
                  sub_415780();
                  break;
                case 5642:
                  sub_415950();
                  break;
                default:
                  goto LABEL_262;
              }
            }
            else if ( v1 == 5635 )
            {
              sub_415430();
            }
            else if ( v1 > 5381 )
            {
              if ( v1 == 5385 )
              {
                sub_408A40(0);
              }
              else if ( v1 == 5633 || v1 == 5634 )
              {
LABEL_203:
                nullsub_1();
              }
              else
              {
LABEL_262:
                sub_403C70(v1, &unk_4484E0);
              }
            }
            else
            {
              switch ( v1 )
              {
                case 5381:
                  sub_408BB0();
                  break;
                case 5378:
                  sub_408AD0(0);
                  break;
                case 5379:
                  sub_408B00();
                  break;
                default:
                  sub_408B50();
                  break;
              }
            }
          }
          else if ( v1 == 5377 )
          {
            sub_4089E0();
          }
          else
          {
            switch ( v1 )
            {
              case 5122:
                sub_40C820();
                break;
              case 5123:
                sub_40C830();
                break;
              case 5124:
                sub_40CA60();
                break;
              case 5125:
                sub_40CA80();
                break;
              case 5126:
                sub_40C930();
                break;
              case 5127:
                sub_40C940();
                break;
              case 5128:
                sub_40C8C0();
                break;
              case 5129:
                sub_40CA90();
                break;
              case 5130:
                sub_40CAD0();
                break;
              case 5131:
                sub_40CC60();
                break;
              case 5132:
                sub_40CC80();
                break;
              case 5133:
                sub_40CCB0();
                break;
              case 5134:
                sub_40CD90();
                break;
              case 5135:
                sub_40CD20();
                break;
              default:
                goto LABEL_262;
            }
          }
        }
        else if ( v1 == 5121 )
        {
          sub_40C810();
        }
        else
        {
          switch ( v1 )
          {
            case 4872:
              sub_413FD0();
              break;
            case 4873:
              sub_414040();
              break;
            case 4874:
              sub_4140B0();
              break;
            case 4875:
              sub_413CD0();
              break;
            case 4876:
              sub_413DA0();
              break;
            case 4877:
              goto LABEL_203;
            case 4878:
              sub_413DC0();
              break;
            case 4881:
              sub_414470();
              break;
            case 4882:
              sub_413D30();
              break;
            case 4883:
              sub_413E40();
              break;
            case 4890:
              sub_419C60();
              break;
            case 4892:
              sub_413E50();
              break;
            case 4893:
              sub_419F10();
              break;
            case 4894:
              sub_419F50();
              break;
            case 4897:
              sub_4172C0();
              break;
            case 4898:
              sub_417210();
              break;
            case 4899:
              sub_419FF0();
              break;
            case 4904:
              sub_419B40();
              break;
            case 4905:
              sub_4140C0();
              break;
            case 4906:
              sub_414120();
              break;
            case 4907:
              sub_413E70();
              break;
            case 4908:
              sub_413EA0();
              break;
            default:
              goto LABEL_262;
          }
        }
      }
      else if ( v1 == 4871 )
      {
        sub_414540();
      }
      else if ( v1 > 4359 )
      {
        if ( v1 > 4611 )
        {
          if ( v1 > 4865 )
          {
            switch ( v1 )
            {
              case 4866:
                sub_4199F0();
                break;
              case 4867:
                sub_419B60();
                break;
              case 4868:
                sub_419C20();
                break;
              case 4869:
                sub_414410();
                break;
              case 4870:
                sub_414530();
                break;
              default:
                goto LABEL_262;
            }
          }
          else if ( v1 == 4865 )
          {
            sub_419920();
          }
          else
          {
            switch ( v1 )
            {
              case 4612:
                sub_410610();
                break;
              case 4613:
                sub_410620();
                break;
              case 4614:
                sub_410630();
                break;
              case 4615:
                sub_410680();
                break;
              case 4616:
                sub_4106A0();
                break;
              case 4617:
                sub_4106C0();
                break;
              case 4618:
                sub_410730();
                break;
              case 4619:
                sub_405D20();
                break;
              case 4620:
                sub_405D70();
                break;
              case 4621:
                sub_405D90();
                break;
              case 4622:
                sub_405DB0();
                break;
              case 4623:
                sub_406090();
                break;
              case 4624:
                sub_4060A0();
                break;
              case 4626:
                sub_4107A0();
                break;
              case 4629:
                sub_410580();
                break;
              case 4630:
                sub_410960();
                break;
              case 4632:
                sub_4060B0();
                break;
              default:
                goto LABEL_262;
            }
          }
        }
        else if ( v1 == 4611 )
        {
          sub_410600();
        }
        else
        {
          switch ( v1 )
          {
            case 4360:
              sub_4036B0();
              break;
            case 4361:
              __setargv();
              break;
            case 4362:
              sub_4036E0();
              break;
            case 4372:
              sub_419C80();
              break;
            case 4373:
              sub_419C90();
              break;
            case 4374:
              sub_419CA0();
              break;
            case 4375:
              sub_419CB0();
              break;
            case 4382:
              sub_405680();
              break;
            case 4383:
              sub_405710();
              break;
            case 4384:
              goto LABEL_99;
            case 4385:
              sub_403650();
              break;
            case 4386:
              sub_4041D0();
              break;
            case 4387:
              __setargv_0();
              break;
            case 4388:
              sub_403700();
              break;
            case 4389:
              __setargv_1();
              break;
            case 4390:
              sub_403720();
              break;
            case 4391:
              sub_403670();
              break;
            case 4392:
              sub_403680();
              break;
            case 4393:
              sub_40BA20();
              break;
            case 4394:
              sub_4036C0();
              break;
            case 4395:
              sub_40BA40();
              break;
            case 4396:
              __setargv_2();
              break;
            case 4397:
              sub_403740();
              break;
            case 4609:
              sub_4105C0();
              break;
            default:
              goto LABEL_262;
          }
        }
      }
      else if ( v1 == 4359 )
      {
        sub_403660();
      }
      else if ( v1 > 1179 )
      {
        if ( v1 > 4101 )
        {
          if ( v1 > 4353 )
          {
            switch ( v1 )
            {
              case 4354:
                sub_4040F0();
                continue;
              case 4355:
                sub_404130();
                continue;
              case 4356:
                sub_404280();
              case 4357:
                sub_4042A0();
                continue;
              case 4358:
                sub_404360();
                continue;
              default:
                goto LABEL_262;
            }
          }
          if ( v1 == 4353 )
          {
            sub_4040D0();
          }
          else
          {
            switch ( v1 )
            {
              case 4102:
                sub_40B1F0();
                break;
              case 4103:
                sub_40B220();
                break;
              case 4130:
                sub_406370();
                break;
              case 4131:
                sub_4063A0();
                break;
              case 4224:
                sub_403030();
                break;
              default:
                goto LABEL_262;
            }
          }
        }
        else if ( v1 == 4101 )
        {
          sub_40B1A0();
        }
        else if ( v1 > 1277 )
        {
          if ( v1 > 4097 )
          {
            if ( v1 == 4098 )
            {
              sub_40B040(0);
            }
            else
            {
              if ( v1 != 4099 )
                goto LABEL_262;
              sub_40B160();
            }
          }
          else
          {
            switch ( v1 )
            {
              case 4097:
                sub_40AFF0();
                break;
              case 1278:
                sub_404390(v0);
                break;
              case 1279:
                sub_4043B0();
                break;
              default:
                goto LABEL_262;
            }
          }
        }
        else if ( v1 == 1277 )
        {
          sub_404370(v0);
        }
        else
        {
          switch ( v1 )
          {
            case 1180:
              sub_408720();
              break;
            case 1248:
              sub_404480(v0);
              break;
            case 1249:
              unknown_libname_3(); // call 2次0x403ef0
              break;
            case 1250:
              sub_404520(); // call 403ef0
              break;
            case 1251:
              goto LABEL_203;
            default:
              goto LABEL_262;
          }
        }
      }
      else if ( v1 == 1179 )
      {
        j____setargv_5();
      }
      else if ( v1 > 1158 )
      {
        switch ( v1 )
        {
          case 1159:
            sub_40A2D0();
            break;
          case 1160:
            sub_40A300();
            break;
          case 1168:
            v0 = sub_407F90();
            break;
          case 1169:
            sub_407F70();
            break;
          case 1170:
            sub_407F80();
            break;
          case 1172:
            sub_4085F0();
            break;
          case 1173:
            sub_408610();
            break;
          case 1174:
            sub_408630();
            break;
          case 1175:
            sub_408650();
            break;
          case 1176:
            goto LABEL_36;
          case 1178:
            sub_4086E0();
            break;
          default:
            goto LABEL_262;
        }
      }
      else if ( v1 == 1158 )
      {
LABEL_36:
        sub_40A2B0();
      }
      else if ( v1 > 1152 )
      {
        switch ( v1 )
        {
          case 1153:
            sub_409C20();
            break;
          case 1154:
            sub_409C30();
            break;
          case 1155:
            sub_40A240();
            break;
          case 1156:
            sub_40A270();
            break;
          case 1157:
            sub_40A290();
            break;
          default:
            goto LABEL_262;
        }
      }
      else if ( v1 == 1152 )
      {
        v0 = sub_409C40();
      }
      else if ( v1 > 771 )
      {
        if ( v1 == 1040 )
        {
          sub_4043C0(0);
        }
        else
        {
          if ( v1 != 1056 )
            goto LABEL_262;
          sub_4040C0();
        }
      }
      else
      {
        switch ( v1 )
        {
          case 771:
            sub_4102D0();
            break;
          case 257:
            v0 = sub_413350(0);
            break;
          case 769:
            sub_410170();
            break;
          case 770:
            sub_410290();
            break;
          default:
            goto LABEL_262;
        }
      }
    }
  }
  --dword_471B10;
  return v0;
}