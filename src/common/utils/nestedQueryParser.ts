import { GraphQLResolveInfo, Kind } from 'graphql';

export const parseNestedQuery = <TSelect>(info: GraphQLResolveInfo): TSelect => {
  const selections = info.fieldNodes[0]?.selectionSet?.selections || [];
  const selectMap: TSelect = {} as TSelect;

  for (const selection of selections) {
    if (selection.kind === Kind.FIELD) {
      const fieldName = selection.name.value;
      
      if (/^__.*/.test(fieldName)) {
        continue;
      }
      
      if (selection.selectionSet) {
        selectMap[fieldName] = {
          select: parseNestedQuery({
            ...info,
            fieldNodes: [selection]
          })
        };
      } else {
        selectMap[fieldName] = true;
      }
    }
  }

  return selectMap;
};
