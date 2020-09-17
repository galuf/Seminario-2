url = 'param18-i1.txt'

fichero = open(url,'w')

initial_param ={
  'create_organism'        : 19, # total de celulas
  'threshold_activation'   : 60,
  'threshold_inhibition'   : 70,
  'mutation_rate_mol_cell' : 2,
  'mutation_rate_atom_mol' : 20,
  'molecular_shape_size'   : 14
}
clave = list(initial_param.keys())

for i in range(len(clave)):
  fichero.write(str(clave[i]) + '\t' + str(initial_param[str(clave[i])]) + '\n')

capas = {
  'input' : [9,20,5,4,0,4,4,12,20], # 20 celulas de entrada Capa 1
  'internal1': [6,20,5,4,0,4,4,12,20], #10 celulas en la segunda capa
  'internal2': [3,20,5,4,0,4,4,12,20], #6 celulas en la tercera capa
  #'internal3': [3,20,5,4,0,4,4,12,20], #3 celulas en la tercera capa
  'output': [1,25,5,5,5,4,4,17,30] #1 celula de salida
}

#create_cell       1  20 rect 5 4  input 0
#n_receptors_cell  1   4
#n_effectors_cell  1   4
#n_internal_cell   1  12 
#_inhibitors_cell 1  20

layer = 0
estructura = []
fichero.write('\n')
for capa in capas:
  estructura.append(list(range(layer+1,layer+capas[capa][0]+1))) 
  #fichero.write('\n')
  for i in range(1,capas[capa][0]+1):
    layer +=1
    fichero.write('create_cell\t'+str(layer)+'\t'+str(capas[capa][1]) + '\trect\t'+str(capas[capa][2])+'\t'+ str(capas[capa][3])+'\t'+capa+'\t'+str(capas[capa][4])+'\n')
    fichero.write('n_receptors_cell\t' + str(layer) +'\t'+ str(capas[capa][5])+'\n')
    fichero.write('n_effectors_cell\t' + str(layer) +'\t'+ str(capas[capa][6])+'\n')
    fichero.write('n_internal_cell\t' + str(layer) +'\t'+ str(capas[capa][7])+'\n')
    fichero.write('p_inhibitors_cell\t' + str(layer) +'\t'+ str(capas[capa][8])+'\n')
    fichero.write('\n')

for capa in range(0,len(estructura)-1):
  for element in estructura[capa]:
    for rep in estructura[capa + 1]:
      fichero.write('cell_cell'+'\t'+str(element)+'\t'+str(rep)+'\n')
    fichero.write('\n')
  #fichero.write('\n')

fichero.write('fraction_input_vector'+'\t'+str(2)+'\n')
fichero.write('minimal_global_error'+'\t'+ str(0.001)+'\n')
fichero.write('seeds clock clock'+'\n')
fichero.write('end.')          