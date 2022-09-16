(* -*- coding: utf-8 -*- *)

(* This file is part of the Catala compiler, a specification language for tax and social benefits
   computation rules. Copyright (C) 2020 Inria, contributors: Denis Merigoux
   <denis.merigoux@inria.fr>, Emile Rolley <emile.rolley@tuta.io>

   Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
   in compliance with the License. You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software distributed under the License
   is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
   or implied. See the License for the specific language governing permissions and limitations under
   the License. *)

(* Defining the lexer macros for Chinese *)

(* Tokens and their corresponding sedlex regexps *)

#define MS_SCOPE "语境"
#define MS_CONSEQUENCE "结果"
#define MS_DATA "数据"
#define MS_DEPENDS "取决于"
#define MS_DECLARATION "声明"
#define MS_CONTEXT "上下文"
#define MS_DECREASING "下降"
#define MS_INCREASING "上升"
#define MS_OF "用于"
#define MS_COLLECTION "集合"
#define MS_CONTAINS "含有"
#define MS_ENUM "枚举"
#define MS_INTEGER "整数"
#define MS_MONEY "货币"
#define MS_TEXT "文本"
#define MS_DECIMAL "小数"
#define MS_DATE "日期"
#define MS_DURATION "时长"
#define MS_BOOLEAN "真值"
#define MS_SUM "和值"
#define MS_FILLED "满足"
#define MS_DEFINITION "定义"
#define MS_STATE "状态"
#define MS_LABEL "标记"
#define MS_EXCEPTION "例外"
#define MS_DEFINED_AS "等于"
#define MS_MATCH "匹配"
#define MS_WILDCARD "任何"
#define MS_WITH "和模式"
#define MS_UNDER_CONDITION "在条件下"
#define MS_IF "如果"
#define MS_THEN "那么"
#define MS_ELSE "否则"
#define MS_CONDITION "条件"
#define MS_CONTENT "内容"
#define MS_STRUCT "结构"
#define MS_ASSERTION "声称"
#define MS_VARIES "变动"
#define MS_WITH_V "连同"
#define MS_FOR "对于"
#define MS_ALL "所有"
#define MS_WE_HAVE "我们有"
#define MS_FIXED "固定"
#define MS_BY "被"
#define MS_RULE "规定"
#define MS_LET "让"
#define MS_EXISTS "存在"
#define MS_IN "然后"
#define MS_SUCH "如此"
#define MS_THAT "从而"
#define MS_AND "and"
#define MS_OR "or"
#define MS_XOR "xor"
#define MS_NOT "not"
#define MS_MAXIMUM "maximum"
#define MS_MINIMUM "minimum"
#define MS_FILTER "filter"
#define MS_MAP "map"
#define MS_INIT "initial"
#define MS_CARDINAL "number"
#define MS_YEAR "year"
#define MS_MONTH "month"
#define MS_DAY "day"
#define MS_TRUE "true"
#define MS_FALSE "false"
#define MS_INPUT "输入"
#define MS_OUTPUT "输出"
#define MS_INTERNAL "内部"

(* Specific delimiters *)

#define MR_MONEY_OP_SUFFIX 0x00A5 (* the ￥ sign*)
#define MC_DECIMAL_SEPARATOR '.'
#define MR_MONEY_PREFIX 0x00A5, Star hspace
#define MR_MONEY_DELIM ','
#define MR_MONEY_SUFFIX ""

(* Builtins *)

#define MS_RoundMoney "round_money"
#define MS_RoundDecimal "round_decimal"
#define MS_IntToDec "integer_to_decimal"
#define MS_MoneyToDec "money_to_decimal"
#define MS_DecToMoney "decimal_to_money"
#define MS_GetDay "get_day"
#define MS_GetMonth "get_month"
#define MS_GetYear "get_year"
#define MS_FirstDayOfMonth "first_day_of_month"
#define MS_LastDayOfMonth "last_day_of_month"

(* Directives *)

#define MR_LAW_INCLUDE "Include"
#define MX_AT_PAGE \
   '@', Star hspace, "p.", Star hspace, Plus digit -> \
      let s = Utf8.lexeme lexbuf in \
      let i = String.index s '.' in \
      AT_PAGE (int_of_string (String.trim (String.sub s i (String.length s - i))))
